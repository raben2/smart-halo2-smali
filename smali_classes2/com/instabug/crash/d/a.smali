.class public Lcom/instabug/crash/d/a;
.super Ljava/lang/Object;
.source "ExternalAutoScreenRecordHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/video/ScreenRecordingContract;


# static fields
.field private static a:Lcom/instabug/crash/d/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/instabug/crash/d/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/crash/d/a;->a:Lcom/instabug/crash/d/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/crash/d/a;

    invoke-direct {v0}, Lcom/instabug/crash/d/a;-><init>()V

    sput-object v0, Lcom/instabug/crash/d/a;->a:Lcom/instabug/crash/d/a;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/crash/d/a;->a:Lcom/instabug/crash/d/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->start()V

    return-void
.end method

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
