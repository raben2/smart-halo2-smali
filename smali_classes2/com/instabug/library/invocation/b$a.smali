.class Lcom/instabug/library/invocation/b$a;
.super Ljava/lang/Object;
.source "InvocationRequestListenerImp.java"

# interfaces
.implements Lcom/instabug/library/core/InitialScreenshotHelper$InitialScreenshotCapturingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/b$a;->a:Lcom/instabug/library/invocation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotCapturedSuccessfully(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/b$a;->a:Lcom/instabug/library/invocation/b;

    invoke-virtual {v0, p1}, Lcom/instabug/library/invocation/b;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/invocation/b$a;->a:Lcom/instabug/library/invocation/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/library/invocation/b;->c(Landroid/net/Uri;)V

    return-void
.end method
