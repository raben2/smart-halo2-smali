.class public Lpl/brightinventions/slf4android/LoggerConfiguration;
.super Ljava/lang/Object;
.source "LoggerConfiguration.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LoggerPatternConfiguration;


# static fields
.field private static configuration:Lpl/brightinventions/slf4android/LoggerConfiguration; = null

.field private static initialized:Z = false


# instance fields
.field private final compiler:Lpl/brightinventions/slf4android/HandlerFormatterCompiler;

.field private final disposeThingsOnReset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpl/brightinventions/slf4android/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpl/brightinventions/slf4android/LoggerPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->loggerPatterns:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->disposeThingsOnReset:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;

    invoke-direct {v0, p0}, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;-><init>(Lpl/brightinventions/slf4android/LoggerPatternConfiguration;)V

    iput-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->compiler:Lpl/brightinventions/slf4android/HandlerFormatterCompiler;

    return-void
.end method

.method public static configuration()Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1

    .line 101
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->ensureInitialized()V

    .line 102
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    return-object v0
.end method

.method private static configureDefaults()V
    .locals 2

    .line 40
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->defaultConfiguration()V

    .line 41
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->setupDefaultRootLoggerHandler()V

    .line 42
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    sget-object v1, Lpl/brightinventions/slf4android/LogLevel;->TRACE:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0, v1}, Lpl/brightinventions/slf4android/LoggerConfiguration;->setRootLogLevel(Lpl/brightinventions/slf4android/LogLevel;)Lpl/brightinventions/slf4android/LoggerConfiguration;

    return-void
.end method

.method private static defaultConfiguration()V
    .locals 4

    .line 46
    new-instance v0, Lpl/brightinventions/slf4android/LoggerConfiguration;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/LoggerConfiguration;-><init>()V

    sput-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    .line 47
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%newline"

    new-instance v2, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "\n"

    :goto_0
    invoke-direct {v2, v3}, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 48
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%message"

    new-instance v2, Lpl/brightinventions/slf4android/MessageValueSupplier;

    invoke-direct {v2}, Lpl/brightinventions/slf4android/MessageValueSupplier;-><init>()V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 49
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%thread"

    new-instance v2, Lpl/brightinventions/slf4android/ThreadValueSupplier;

    invoke-direct {v2}, Lpl/brightinventions/slf4android/ThreadValueSupplier;-><init>()V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 50
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%name"

    new-instance v2, Lpl/brightinventions/slf4android/LoggerNameValueSupplier;

    invoke-direct {v2}, Lpl/brightinventions/slf4android/LoggerNameValueSupplier;-><init>()V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 51
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%level"

    new-instance v2, Lpl/brightinventions/slf4android/LevelValueSupplier;

    invoke-direct {v2}, Lpl/brightinventions/slf4android/LevelValueSupplier;-><init>()V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    .line 52
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    const-string v1, "%date"

    new-instance v2, Lpl/brightinventions/slf4android/DateValueSupplier;

    invoke-direct {v2}, Lpl/brightinventions/slf4android/DateValueSupplier;-><init>()V

    invoke-virtual {v0, v1, v2}, Lpl/brightinventions/slf4android/LoggerConfiguration;->registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    return-void
.end method

.method private dispose()V
    .locals 2

    .line 34
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->disposeThingsOnReset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/brightinventions/slf4android/Disposable;

    .line 35
    invoke-interface {v1}, Lpl/brightinventions/slf4android/Disposable;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static declared-synchronized ensureInitialized()V
    .locals 2

    const-class v0, Lpl/brightinventions/slf4android/LoggerConfiguration;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-boolean v1, Lpl/brightinventions/slf4android/LoggerConfiguration;->initialized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 107
    sput-boolean v1, Lpl/brightinventions/slf4android/LoggerConfiguration;->initialized:Z

    .line 108
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->configureDefaults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fileLogHandler(Landroid/content/Context;)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
    .locals 2

    .line 96
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration()Lpl/brightinventions/slf4android/LoggerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->compiler:Lpl/brightinventions/slf4android/HandlerFormatterCompiler;

    const-string v1, "%date %level [%thread] %name - %message%newline"

    invoke-virtual {v0, v1}, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;->compile(Ljava/lang/String;)Lpl/brightinventions/slf4android/LogRecordFormatter;

    move-result-object v0

    .line 97
    new-instance v1, Lpl/brightinventions/slf4android/FileLogHandler;

    invoke-direct {v1, p0, v0}, Lpl/brightinventions/slf4android/FileLogHandler;-><init>(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecordFormatter;)V

    return-object v1
.end method

.method private getStateListener(Landroid/app/Application;)Lpl/brightinventions/slf4android/ActivityStateListener;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lpl/brightinventions/slf4android/ActivityStateListener;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/ActivityStateListener;-><init>()V

    .line 155
    iget-object v1, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->disposeThingsOnReset:Ljava/util/ArrayList;

    new-instance v2, Lpl/brightinventions/slf4android/LoggerConfiguration$1;

    invoke-direct {v2, p0, p1, v0}, Lpl/brightinventions/slf4android/LoggerConfiguration$1;-><init>(Lpl/brightinventions/slf4android/LoggerConfiguration;Landroid/app/Application;Lpl/brightinventions/slf4android/ActivityStateListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static removeLogHandlers(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    .line 82
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;

    .line 84
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private removeRootLogHandler(Ljava/lang/Class;)Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lpl/brightinventions/slf4android/LogcatHandler;",
            ">;)",
            "Lpl/brightinventions/slf4android/LoggerConfiguration;"
        }
    .end annotation

    const-string v0, ""

    .line 125
    invoke-virtual {p0, v0, p1}, Lpl/brightinventions/slf4android/LoggerConfiguration;->removeHandlerFromLogger(Ljava/lang/String;Ljava/lang/Class;)Lpl/brightinventions/slf4android/LoggerConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private static removeRootLogHandlers()Ljava/util/logging/Logger;
    .locals 1

    const-string v0, ""

    .line 69
    invoke-static {v0}, Lpl/brightinventions/slf4android/LoggerConfiguration;->removeLogHandlers(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static resetConfigurationToDefault()Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1

    .line 26
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {v0}, Lpl/brightinventions/slf4android/LoggerConfiguration;->dispose()V

    .line 29
    :cond_0
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->configureDefaults()V

    .line 30
    sget-object v0, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    return-object v0
.end method

.method private static setupDefaultRootLoggerHandler()V
    .locals 4

    .line 56
    invoke-static {}, Lpl/brightinventions/slf4android/LoggerConfiguration;->removeRootLogHandlers()Ljava/util/logging/Logger;

    move-result-object v0

    .line 57
    new-instance v1, Lpl/brightinventions/slf4android/LogcatHandler;

    sget-object v2, Lpl/brightinventions/slf4android/LoggerConfiguration;->configuration:Lpl/brightinventions/slf4android/LoggerConfiguration;

    iget-object v2, v2, Lpl/brightinventions/slf4android/LoggerConfiguration;->compiler:Lpl/brightinventions/slf4android/HandlerFormatterCompiler;

    const-string v3, "%message"

    invoke-virtual {v2, v3}, Lpl/brightinventions/slf4android/HandlerFormatterCompiler;->compile(Ljava/lang/String;)Lpl/brightinventions/slf4android/LogRecordFormatter;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/brightinventions/slf4android/LogcatHandler;-><init>(Lpl/brightinventions/slf4android/LogRecordFormatter;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-void
.end method


# virtual methods
.method public addHandlerToLogger(Ljava/lang/String;Ljava/util/logging/Handler;)Ljava/util/logging/Logger;
    .locals 0

    .line 173
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-object p1
.end method

.method public addHandlerToRootLogger(Ljava/util/logging/Handler;)Ljava/util/logging/Logger;
    .locals 1

    const-string v0, ""

    .line 184
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-object v0
.end method

.method public getPatterns()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lpl/brightinventions/slf4android/LoggerPattern;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->loggerPatterns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDeveloperHandler(Landroid/app/Application;Ljava/lang/String;)Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
    .locals 2

    .line 142
    invoke-direct {p0, p1}, Lpl/brightinventions/slf4android/LoggerConfiguration;->getStateListener(Landroid/app/Application;)Lpl/brightinventions/slf4android/ActivityStateListener;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p2, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-direct {p2, p1, v1, v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;-><init>(Landroid/app/Application;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/ActivityStateListener;)V

    .line 146
    const-class p1, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;

    invoke-virtual {p2, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->addAttachmentClass(Ljava/lang/Class;)V

    .line 147
    const-class p1, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;

    invoke-virtual {p2, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->addAttachmentClass(Ljava/lang/Class;)V

    return-object p2
.end method

.method public registerPattern(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration;->loggerPatterns:Ljava/util/ArrayList;

    new-instance v1, Lpl/brightinventions/slf4android/LoggerPattern;

    invoke-direct {v1, p1, p2}, Lpl/brightinventions/slf4android/LoggerPattern;-><init>(Ljava/lang/String;Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeHandlerFromLogger(Ljava/lang/String;Ljava/lang/Class;)Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/logging/Handler;",
            ">;)",
            "Lpl/brightinventions/slf4android/LoggerConfiguration;"
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public removeRootLogcatHandler()Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1

    .line 121
    const-class v0, Lpl/brightinventions/slf4android/LogcatHandler;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/LoggerConfiguration;->removeRootLogHandler(Ljava/lang/Class;)Lpl/brightinventions/slf4android/LoggerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public setLogLevel(Ljava/lang/String;Lpl/brightinventions/slf4android/LogLevel;)Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-object p0
.end method

.method public setRootLogLevel(Lpl/brightinventions/slf4android/LogLevel;)Lpl/brightinventions/slf4android/LoggerConfiguration;
    .locals 1

    const-string v0, ""

    .line 61
    invoke-virtual {p0, v0, p1}, Lpl/brightinventions/slf4android/LoggerConfiguration;->setLogLevel(Ljava/lang/String;Lpl/brightinventions/slf4android/LogLevel;)Lpl/brightinventions/slf4android/LoggerConfiguration;

    move-result-object p1

    return-object p1
.end method
