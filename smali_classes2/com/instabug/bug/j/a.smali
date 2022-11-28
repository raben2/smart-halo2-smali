.class public Lcom/instabug/bug/j/a;
.super Ljava/lang/Object;
.source "ExternalAutoScreenRecordHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/video/ScreenRecordingContract;


# static fields
.field private static a:Lcom/instabug/bug/j/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instabug/bug/j/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/j/a;->a:Lcom/instabug/bug/j/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/j/a;

    invoke-direct {v0}, Lcom/instabug/bug/j/a;-><init>()V

    sput-object v0, Lcom/instabug/bug/j/a;->a:Lcom/instabug/bug/j/a;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/bug/j/a;->a:Lcom/instabug/bug/j/a;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->clear()V

    return-void
.end method

.method public delete()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->delete()V

    return-void
.end method

.method public getAutoScreenRecordingFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->isEnabled()Z

    move-result v0

    return v0
.end method
