.class public abstract Lcom/instabug/bug/view/reporting/c;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "BaseReportingPresenter.java"

# interfaces
.implements Lcom/instabug/bug/view/reporting/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/reporting/c$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/bug/view/reporting/e;",
        ">;",
        "Lcom/instabug/bug/view/reporting/d;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/bug/view/reporting/c$h;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/instabug/bug/view/reporting/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    .line 4
    iput-boolean p1, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    .line 9
    sget-object p1, Lcom/instabug/bug/view/reporting/c$h;->NONE:Lcom/instabug/bug/view/reporting/c$h;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    return p0
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/e;)V

    return-void
.end method

.method private a(Lcom/instabug/bug/view/reporting/e;)V
    .locals 2
    .param p1    # Lcom/instabug/bug/view/reporting/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/view/reporting/c$f;

    invoke-direct {v1, p0, p1}, Lcom/instabug/bug/view/reporting/c$f;-><init>(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/instabug/bug/view/reporting/e;Landroid/content/Intent;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 11
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileNameAndSize(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const-string v2, "0"

    .line 15
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 18
    invoke-static {v4}, Lcom/instabug/library/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 20
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_7

    .line 23
    invoke-static {v1}, Lcom/instabug/library/util/FileUtils;->isImageExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2, v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 26
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    .line 27
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Ljava/io/File;Lcom/instabug/library/model/Attachment$Type;)V

    goto/16 :goto_0

    .line 30
    :cond_2
    invoke-static {v1}, Lcom/instabug/library/util/FileUtils;->isVideoExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_3

    .line 34
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->showMediaFileSizeAlert()V

    const-string p1, "BaseReportingPresenter"

    const-string p2, "video size exceeded the limit"

    .line 35
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_3
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2, v4}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getFileFromContentProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 42
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/VideoManipulationUtils;->extractVideoDuration(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 44
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->showVideoLengthAlert()V

    const-string p1, "BaseReportingPresenter"

    const-string v0, "video length exceeded the limit"

    .line 45
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "BaseReportingPresenter"

    const-string p2, "file deleted"

    .line 48
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/instabug/bug/c;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)V

    goto :goto_0

    :cond_5
    const-string p1, "BaseReportingPresenter"

    const-string p2, "video file is null"

    .line 55
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseReportingPresenter"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseReportingPresenter"

    invoke-static {v0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1}, Lcom/instabug/bug/l/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/instabug/bug/view/reporting/e;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/instabug/bug/view/reporting/c;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    return v0
.end method

.method private b(Lcom/instabug/bug/view/reporting/e;)V
    .locals 3

    .line 22
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->d()V

    .line 23
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/model/a$a;->IN_PROGRESS:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$a;)Lcom/instabug/bug/model/a;

    .line 27
    :cond_0
    const-class v0, Lcom/instabug/bug/BugPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/BugPlugin;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    .line 30
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instabug/library/settings/SettingsManager;->setProcessingForeground(Z)V

    .line 31
    invoke-static {}, Lcom/instabug/bug/k/a;->a()Lcom/instabug/bug/k/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/bug/k/a;->a(Landroid/content/Context;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 34
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->finishActivity()V

    :cond_2
    return-void
.end method

.method private b(Lcom/instabug/bug/view/reporting/e;Landroid/content/Intent;)V
    .locals 6
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getGalleryImagePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "BaseReportingPresenter"

    const-string p2, "File path is null"

    .line 43
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_1
    invoke-static {v0}, Lcom/instabug/library/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {p2}, Lcom/instabug/library/util/FileUtils;->isImageExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p2

    .line 50
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    .line 52
    invoke-virtual {p2, p1, v0, v1}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p2}, Lcom/instabug/library/util/FileUtils;->isVideoExtension(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 55
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 58
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->showMediaFileSizeAlert()V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v0}, Lcom/instabug/library/util/VideoManipulationUtils;->extractVideoDuration(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 60
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->showVideoLengthAlert()V

    goto :goto_0

    .line 62
    :cond_4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    .line 63
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/instabug/bug/c;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)V

    .line 66
    :cond_5
    :goto_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/instabug/bug/c;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/bug/view/reporting/c;)Lcom/instabug/bug/view/reporting/c$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/State;->setCustomUserAttribute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-static {p1}, Lcom/instabug/bug/l/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/State;->setCustomUserAttribute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic i(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic j(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic k(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private n()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/settings/a;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVALID_COMMENT_MESSAGE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 13
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    sget v4, Lcom/instabug/library/R$string;->instabug_err_invalid_comment:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCommentValid comment field is invalid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseReportingPresenter"

    invoke-static {v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, v2}, Lcom/instabug/bug/view/reporting/e;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private o()V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->c()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/instabug/bug/view/reporting/c;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/instabug/bug/view/reporting/c;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/instabug/bug/l/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private r()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c;->a:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/StateCreatorEventBus;->getInstance()Lcom/instabug/bug/StateCreatorEventBus;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/core/eventbus/EventBus;->getEventObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/instabug/bug/view/reporting/c$d;

    invoke-direct {v2, p0}, Lcom/instabug/bug/view/reporting/c$d;-><init>(Lcom/instabug/bug/view/reporting/c;)V

    new-instance v3, Lcom/instabug/bug/view/reporting/c$e;

    invoke-direct {v3, p0}, Lcom/instabug/bug/view/reporting/c$e;-><init>(Lcom/instabug/bug/view/reporting/c;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/c;->c:I

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c;->a:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->getInstance()Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/core/eventbus/EventBus;->getEventObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/instabug/bug/view/reporting/c$b;

    invoke-direct {v2, p0}, Lcom/instabug/bug/view/reporting/c$b;-><init>(Lcom/instabug/bug/view/reporting/c;)V

    new-instance v3, Lcom/instabug/bug/view/reporting/c$c;

    invoke-direct {v3, p0}, Lcom/instabug/bug/view/reporting/c$c;-><init>(Lcom/instabug/bug/view/reporting/c;)V

    .line 4
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public a(Lcom/instabug/library/model/Attachment;)V
    .locals 3
    .param p1    # Lcom/instabug/library/model/Attachment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 67
    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {p1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "BaseReportingPresenter"

    const-string v2, "removing video attachment"

    .line 68
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v1

    const-string v2, "DEFAULT_IN_MEMORY_CACHE_KEY"

    .line 70
    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getCache(Ljava/lang/String;)Lcom/instabug/library/internal/storage/cache/Cache;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "video.path"

    .line 72
    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/cache/Cache;->delete(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "BaseReportingPresenter"

    const-string v2, "video attachment removed successfully"

    .line 74
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 78
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/BaseReport;->setHasVideo(Z)Lcom/instabug/library/model/BaseReport;

    .line 82
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "BaseReportingPresenter"

    const-string v1, "attachment removed successfully"

    .line 84
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/library/model/Attachment;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/State;->setUserEmail(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmailChanged set live bug with email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseReportingPresenter"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-static {p1}, Lcom/instabug/bug/view/i/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p1, p2}, Lcom/instabug/bug/view/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/bug/view/reporting/e;

    if-eqz p2, :cond_1

    .line 91
    invoke-interface {p2, p1}, Lcom/instabug/bug/view/reporting/e;->a(Landroid/text/Spanned;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/e;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    .line 8
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->k()Lcom/instabug/bug/model/a$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    if-ne v1, v2, :cond_1

    .line 12
    sget-object v1, Lcom/instabug/bug/view/reporting/c$h;->TAKE_EXTRA_SCREENSHOT:Lcom/instabug/bug/view/reporting/c$h;

    iput-object v1, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->showPreparingDialog()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 18
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isScreenshotByMediaProjectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->requestMediaProjectionPermission()V

    goto :goto_0

    .line 21
    :cond_2
    invoke-direct {p0, v0}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/e;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/instabug/library/model/Attachment;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lcom/instabug/bug/view/reporting/e;->a(Lcom/instabug/library/model/Attachment;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/model/a;->c(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c;->a:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/view/g/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/view/g/d;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/view/reporting/e;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v0}, Lcom/instabug/bug/view/reporting/e;->b(Landroid/text/Spanned;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/c;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 4
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->s()V

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->r()V

    .line 12
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->s()V

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->o()V

    .line 18
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->p()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/reporting/e;->e(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmailFromUserManager with entered email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseReportingPresenter"

    .line 8
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmailFromUserManager failed with entered email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " null view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseReportingPresenter"

    .line 14
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_d

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "BaseReportingPresenter"

    const-string v2, "BUG WAS NULL - Recreate a new bug"

    .line 8
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/bug/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "BaseReportingPresenter"

    const-string v2, "Couldn\'t create the Bug due to Null context"

    .line 12
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->k()Lcom/instabug/bug/model/a$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    if-ne v1, v2, :cond_3

    .line 19
    sget-object v1, Lcom/instabug/bug/view/reporting/c$h;->SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

    iput-object v1, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    .line 20
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->showPreparingDialog()V

    return-void

    .line 24
    :cond_3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-nez v1, :cond_4

    .line 26
    sget-object v1, Lcom/instabug/bug/view/reporting/c$h;->SEND_BUG:Lcom/instabug/bug/view/reporting/c$h;

    iput-object v1, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    .line 27
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->showPreparingDialog()V

    return-void

    .line 32
    :cond_4
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/c;->l()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 36
    :cond_5
    sget-object v1, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/bug/view/reporting/c;->e(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/bug/view/reporting/c;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_6
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$string;->ib_error_phone_number:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/reporting/e;->d(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/c;->n()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 50
    :cond_8
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/settings/a;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/settings/SettingsManager;->setEnteredEmail(Ljava/lang/String;)V

    .line 54
    :cond_9
    invoke-interface {p0}, Lcom/instabug/bug/view/reporting/d;->i()Z

    move-result v1

    if-nez v1, :cond_c

    .line 57
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 58
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-nez v1, :cond_a

    .line 59
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->showPreparingDialog()V

    goto :goto_3

    .line 61
    :cond_a
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 62
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/bug/c;->a(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    goto :goto_2

    :cond_b
    const-string v1, "BaseReportingPresenter"

    const-string v2, "Couldn\'t commit the Bug due to Null context"

    .line 65
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :goto_2
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->t()V

    goto :goto_3

    .line 70
    :cond_c
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->v()V

    :goto_3
    const/4 v1, 0x0

    .line 73
    invoke-interface {v0, v1}, Lcom/instabug/bug/view/reporting/e;->c(Z)V

    :cond_d
    return-void
.end method

.method public j()V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/bug/c;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    new-instance v2, Lcom/instabug/bug/view/reporting/c$a;

    invoke-direct {v2, p0, v0}, Lcom/instabug/bug/view/reporting/c$a;-><init>(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0xf21

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcom/instabug/library/util/PermissionsUtils;->requestPermission(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/view/reporting/e;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instabug/bug/view/reporting/e;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method l()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUserEmailValid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseReportingPresenter"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/instabug/bug/view/reporting/c;->a(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/settings/a;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/settings/a;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 18
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    .line 20
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVALID_EMAIL_MESSAGE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 22
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    sget v4, Lcom/instabug/library/R$string;->instabug_err_invalid_email:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUserEmailValid failed with email:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseReportingPresenter"

    invoke-static {v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v2}, Lcom/instabug/bug/view/reporting/e;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/view/reporting/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/e;

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->k()Lcom/instabug/bug/model/a$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    if-ne v1, v2, :cond_1

    .line 9
    sget-object v1, Lcom/instabug/bug/view/reporting/c$h;->RECORD_VIDEO:Lcom/instabug/bug/view/reporting/c$h;

    iput-object v1, p0, Lcom/instabug/bug/view/reporting/c;->b:Lcom/instabug/bug/view/reporting/c$h;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/e;->showPreparingDialog()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->d()V

    .line 15
    invoke-static {}, Lcom/instabug/bug/j/b;->c()Lcom/instabug/bug/j/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/j/b;->b()V

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->finishActivity()V

    .line 20
    :cond_2
    const-class v0, Lcom/instabug/bug/BugPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/BugPlugin;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0xf16

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    if-eqz p1, :cond_3

    .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/e;Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/e;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xf32

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 14
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->setResultDataIntent(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/c;->m()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x7ee

    if-ne p1, p2, :cond_3

    .line 18
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "isPermissionGranted"

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/e;)V

    :cond_3
    :goto_0
    return-void
.end method
