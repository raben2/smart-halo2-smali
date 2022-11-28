.class public abstract Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
.super Ljava/util/logging/Handler;
.source "FileLogHandlerConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentFileName()Ljava/lang/String;
.end method

.method public abstract setFullFilePathPattern(Ljava/lang/String;)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
.end method

.method public abstract setLogFileSizeLimitInBytes(I)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
.end method

.method public abstract setRotateFilesCountLimit(I)Lpl/brightinventions/slf4android/FileLogHandlerConfiguration;
.end method
