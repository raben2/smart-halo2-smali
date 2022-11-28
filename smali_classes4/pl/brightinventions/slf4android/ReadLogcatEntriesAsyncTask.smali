.class Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;
.super Landroid/os/AsyncTask;
.source "ReadLogcatEntriesAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static LogcatReadingConfig:Lpl/brightinventions/slf4android/LogcatReadingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static declared-synchronized getConfiguration()Lpl/brightinventions/slf4android/LogcatReadingConfiguration;
    .locals 2

    const-class v0, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LogcatReadingConfig:Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    invoke-direct {v1}, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;-><init>()V

    sput-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LogcatReadingConfig:Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    .line 58
    :cond_0
    sget-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LogcatReadingConfig:Lpl/brightinventions/slf4android/LogcatReadingConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 18
    array-length v1, p1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    aget-object p1, p1, v1

    :try_start_0
    const-string v2, "logcat"

    const-string v3, ".log"

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logcat -v time -d -f %s"

    const/4 v4, 0x1

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    sget-object v3, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Command {} returned with code {}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v1, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_1
    sget-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Dumped logcat entries to {} with size {} KB"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->getConfiguration()Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;->shouldClear()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    sget-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Will now clear logcat entries"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v1, "logcat -c"

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 44
    :goto_0
    :try_start_2
    sget-object v3, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error dumping logcat entries to {}"

    invoke-interface {v3, v4, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    return-object p1

    :catch_2
    move-exception p1

    .line 49
    sget-object v1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error creating temp file, did you enable write permissions?"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 19
    :cond_3
    :goto_2
    sget-object p1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Wrong arguments passed to read logcat entries"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->doInBackground([Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
