.class Lcom/instabug/featuresrequest/ui/custom/c$g;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$g;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$g;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/c;->f()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/c$g$a;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/custom/c$g$a;-><init>(Lcom/instabug/featuresrequest/ui/custom/c$g;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
