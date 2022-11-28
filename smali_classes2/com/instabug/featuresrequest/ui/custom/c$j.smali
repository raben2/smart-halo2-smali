.class Lcom/instabug/featuresrequest/ui/custom/c$j;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c;->g()V
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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$j;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$j;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->d(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/c$k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$j;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->d(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/c$k;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$j;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/c$k;->a(Lcom/instabug/featuresrequest/ui/custom/c;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$j;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    .line 5
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/d$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/d;->d(Lcom/instabug/featuresrequest/ui/custom/d$b;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
