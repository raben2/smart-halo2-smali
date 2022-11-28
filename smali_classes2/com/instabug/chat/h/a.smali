.class public Lcom/instabug/chat/h/a;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# static fields
.field private static d:Lcom/instabug/chat/h/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-direct {v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/h/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/instabug/chat/e/a;
    .locals 3

    .line 8
    new-instance v0, Lcom/instabug/chat/e/a;

    invoke-direct {v0}, Lcom/instabug/chat/e/a;-><init>()V

    const-string v1, "offline"

    .line 9
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/a;->d(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const-string v1, "extra_image"

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/a;->e(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/a;->b(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/chat/e/a;->c(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    return-object v0
.end method

.method public static a()Lcom/instabug/chat/h/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/h/a;->d:Lcom/instabug/chat/h/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/h/a;

    invoke-direct {v0}, Lcom/instabug/chat/h/a;-><init>()V

    sput-object v0, Lcom/instabug/chat/h/a;->d:Lcom/instabug/chat/h/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/chat/h/a;->d:Lcom/instabug/chat/h/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/chat/e/a;)V
    .locals 0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/chat/e/a;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/chat/h/a;->a:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/instabug/chat/h/a;->c:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/instabug/chat/h/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-virtual {p1, p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->init(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V

    return-void
.end method

.method public onExtraScreenshotCaptured(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/chat/h/a;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/h/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-virtual {v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->release()V

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/h/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/instabug/chat/h/a;->c:Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/chat/h/a;->a(Landroid/net/Uri;)Lcom/instabug/chat/e/a;

    move-result-object p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/chat/h/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/chat/e/a;)V

    :cond_0
    return-void
.end method

.method public onExtraScreenshotError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/h/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/h/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instabug/chat/h/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/chat/e/a;)V

    :cond_0
    return-void
.end method
