.class Lcom/instabug/featuresrequest/ui/custom/c$e;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/custom/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/ui/custom/c;
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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$e;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/c;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/c;->f()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/custom/c$e;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/c;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/c;->f()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/custom/c$e;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
