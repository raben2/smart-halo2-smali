.class Lpl/brightinventions/slf4android/FileLogHandler;
.super Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
.source "FileLogHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "FileLogHandler"


# instance fields
.field private config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

.field private fileHandler:Ljava/util/logging/FileHandler;

.field private fileHandlerExpose:Lpl/brightinventions/slf4android/FileHandlerExpose;

.field private triedInititializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecordFormatter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;-><init>()V

    .line 24
    invoke-static {p1}, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->defaults(Landroid/content/Context;)Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    move-result-object p1

    iput-object p1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    .line 25
    iget-object p1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iput-object p2, p1, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    .line 26
    new-instance p1, Lpl/brightinventions/slf4android/FileHandlerExpose;

    invoke-direct {p1}, Lpl/brightinventions/slf4android/FileHandlerExpose;-><init>()V

    iput-object p1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandlerExpose:Lpl/brightinventions/slf4android/FileHandlerExpose;

    return-void
.end method

.method private ensureInitialized()V
    .locals 5

    .line 36
    iget-boolean v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->triedInititializing:Z

    if-nez v0, :cond_1

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->triedInititializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 40
    :try_start_1
    new-instance v0, Ljava/util/logging/FileHandler;

    iget-object v1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iget-object v1, v1, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iget v2, v2, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->limit:I

    iget-object v3, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iget v3, v3, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->count:I

    iget-object v4, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iget-boolean v4, v4, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->append:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    .line 41
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    iget-object v1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    invoke-virtual {v1}, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->getFormatterAdapter()Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    :try_start_2
    sget-object v1, Lpl/brightinventions/slf4android/FileLogHandler;->TAG:Ljava/lang/String;

    const-string v2, "Could not create FileHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->triedInititializing:Z

    .line 47
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method private ensureNotInitialized()V
    .locals 2

    .line 139
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can only change configuration before file handler is added to logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 109
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 117
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->flush()V

    :cond_0
    return-void
.end method

.method public getCurrentFileName()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 161
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandlerExpose:Lpl/brightinventions/slf4android/FileHandlerExpose;

    iget-object v1, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0, v1}, Lpl/brightinventions/slf4android/FileHandlerExpose;->getCurrentFileName(Ljava/util/logging/FileHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .line 31
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 32
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    .line 62
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 63
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 125
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;->setEncoding(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 92
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 100
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 101
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    :cond_0
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;->setFilter(Ljava/util/logging/Filter;)V

    .line 54
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 55
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    :cond_0
    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 73
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 74
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    :cond_0
    return-void
.end method

.method public setFullFilePathPattern(Ljava/lang/String;)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
    .locals 1

    .line 133
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureNotInitialized()V

    .line 134
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iput-object p1, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;->setLevel(Ljava/util/logging/Level;)V

    .line 82
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureInitialized()V

    .line 83
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    :cond_0
    return-void
.end method

.method public setLogFileSizeLimitInBytes(I)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
    .locals 1

    .line 153
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureNotInitialized()V

    .line 154
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iput p1, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->limit:I

    return-object p0
.end method

.method public setRotateFilesCountLimit(I)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
    .locals 1

    .line 146
    invoke-direct {p0}, Lpl/brightinventions/slf4android/FileLogHandler;->ensureNotInitialized()V

    .line 147
    iget-object v0, p0, Lpl/brightinventions/slf4android/FileLogHandler;->config:Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    iput p1, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->count:I

    return-object p0
.end method
