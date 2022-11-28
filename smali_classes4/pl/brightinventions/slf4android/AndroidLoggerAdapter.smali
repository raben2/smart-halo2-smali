.class Lpl/brightinventions/slf4android/AndroidLoggerAdapter;
.super Ljava/lang/Object;
.source "AndroidLoggerAdapter.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final DEBUG_LEVEL:Ljava/util/logging/Level;

.field private static final ERROR_LEVEL:Ljava/util/logging/Level;

.field private static final INFO_LEVEL:Ljava/util/logging/Level;

.field private static final TRACE_LEVEL:Ljava/util/logging/Level;

.field private static final WARN_LEVEL:Ljava/util/logging/Level;


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->TRACE:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    .line 10
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->DEBUG:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    .line 11
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->INFO:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    .line 12
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->WARNING:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    .line 13
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->ERROR:Lpl/brightinventions/slf4android/LogLevel;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/LogLevel;->getUtilLogLevel()Ljava/util/logging/Level;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private isEnabled(Ljava/util/logging/Level;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method private print(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p3, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p3, p2, p4}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p4, v0, p2

    const/4 p2, 0x2

    aput-object p5, v0, p2

    invoke-direct {p0, p1, p3, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p4, v0, p2

    invoke-direct {p0, p1, p3, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 123
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 128
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 133
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 143
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 138
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 158
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 163
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 168
    sget-object v1, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 178
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 173
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 303
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 308
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 313
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 323
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 318
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 338
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 343
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 348
    sget-object v1, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 358
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 353
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 183
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 188
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 193
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 203
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 198
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 218
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 223
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 228
    sget-object v1, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 238
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 233
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 153
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->DEBUG_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 148
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isDebugEnabled()Z

    move-result p1

    return p1
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 333
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->ERROR_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 328
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isErrorEnabled()Z

    move-result p1

    return p1
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 213
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->INFO_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isInfoEnabled()Z

    move-result p1

    return p1
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 73
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 68
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isTraceEnabled()Z

    move-result p1

    return p1
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 273
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 268
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->isWarnEnabled()Z

    move-result p1

    return p1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 36
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 45
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 54
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 82
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 91
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 100
    sget-object v1, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 114
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 109
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->TRACE_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 243
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 248
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 258
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 263
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 253
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 1

    .line 278
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 283
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 288
    sget-object v1, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 298
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 293
    sget-object v0, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->WARN_LEVEL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lpl/brightinventions/slf4android/AndroidLoggerAdapter;->print(Ljava/util/logging/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
