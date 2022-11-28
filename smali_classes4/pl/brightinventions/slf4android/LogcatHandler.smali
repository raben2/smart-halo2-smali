.class public Lpl/brightinventions/slf4android/LogcatHandler;
.super Ljava/util/logging/Handler;
.source "LogcatHandler.java"


# instance fields
.field private final logRecordFormatter:Lpl/brightinventions/slf4android/LogRecordFormatter;


# direct methods
.method public constructor <init>(Lpl/brightinventions/slf4android/LogRecordFormatter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 31
    iput-object p1, p0, Lpl/brightinventions/slf4android/LogcatHandler;->logRecordFormatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 3

    .line 44
    invoke-virtual {p0, p1}, Lpl/brightinventions/slf4android/LogcatHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Lpl/brightinventions/slf4android/LogRecord;->fromRecord(Ljava/util/logging/LogRecord;)Lpl/brightinventions/slf4android/LogRecord;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogRecord;->getLogLevel()Lpl/brightinventions/slf4android/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lpl/brightinventions/slf4android/LogLevel;->getAndroidLevel()I

    move-result v1

    .line 49
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object p1

    .line 52
    :try_start_0
    iget-object v2, p0, Lpl/brightinventions/slf4android/LogcatHandler;->logRecordFormatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    invoke-interface {v2, v0}, Lpl/brightinventions/slf4android/LogRecordFormatter;->format(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v1, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LogcatHandler"

    const-string v1, "Error logging message."

    .line 55
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
