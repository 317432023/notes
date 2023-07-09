
export CATALINA_OPTS="$CATALINA_OPTS -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8"
export CATALINA_OPTS="$CATALINA_OPTS -Xms1536m"                             # 初始内存和最大内存为
export CATALINA_OPTS="$CATALINA_OPTS -Xmx1536m"
export CATALINA_OPTS="$CATALINA_OPTS -Xmn512m"                              # 设置新生代大小 推荐新生代大小：老年代大小比例为 1:2，新生代占整堆大小的1/3
export CATALINA_OPTS="$CATALINA_OPTS -Xss512k"                              # 线程栈大小
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxMetaspaceSize=512m"             # 设置元空间初始内存和最大内存
export CATALINA_OPTS="$CATALINA_OPTS -XX:MetaspaceSize=512m"
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseConcMarkSweepGC"               # 指定CMS垃圾回收器作为老年代回收器
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseParNewGC"                      # 使用Parnew垃圾回收器作为新生代回收器
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseCMSInitiatingOccupancyOnly" 
export CATALINA_OPTS="$CATALINA_OPTS -XX:+UseCMSCompactAtFullCollection -XX:CMSFullGCsBeforeCompaction=0" 
export CATALINA_OPTS="$CATALINA_OPTS -XX:CMSInitiatingOccupancyFraction=70"  # 在老年代内存达到70%的时候，进行CMS垃圾回收


# CMS垃圾回收时卸载无用的class类
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+CMSClassUnloadingEnabled"

# 在做System.gc()时会做background模式CMS GC。主要因为用NIO/Netty框架的时候，会直接申请堆外内存，很多框架底层，为了释放mmap分配的空间，会调用System.gc()来回收
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+ExplicitGCInvokesConcurrent"

# 以下为打印GC日志和OOM时dump的参数
#export CATALINA_OPTS="$CATALINA_OPTS -XX:+HeapDumpOnOutOfMemoryError"
#export CATALINA_OPTS="$CATALINA_OPTS -XX:HeapDumpPath=/data/applogs/heapdump.hprof -XX:+PrintGC -XX:+PrintGCDateStamps -XX:+PrintGCDetails"

