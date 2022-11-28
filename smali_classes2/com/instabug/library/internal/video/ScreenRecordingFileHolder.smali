.class public Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;
.super Ljava/lang/Object;
.source "ScreenRecordingFileHolder.java"


# static fields
.field private static final INSTANCE:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;


# instance fields
.field private autoScreenRecordingFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    invoke-direct {v0}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;-><init>()V

    sput-object v0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->INSTANCE:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->INSTANCE:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->autoScreenRecordingFile:Ljava/io/File;

    return-void
.end method

.method public delete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->autoScreenRecordingFile:Ljava/io/File;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Screen recording file deleted"

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoScreenRecordingFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->autoScreenRecordingFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAutoScreenRecordingFile(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->autoScreenRecordingFile:Ljava/io/File;

    return-void
.end method
