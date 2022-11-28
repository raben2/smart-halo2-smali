.class Lcom/instabug/featuresrequest/ui/custom/c$f;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$f;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$f;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SF_SWITCH_NO_DEFAULT"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$f;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    .line 2
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/d$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/d;->a(Lcom/instabug/featuresrequest/ui/custom/d$b;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/instabug/featuresrequest/ui/custom/d;->a()Lcom/instabug/featuresrequest/ui/custom/d;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$f;->a:Lcom/instabug/featuresrequest/ui/custom/c;

    .line 7
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/d$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/d;->e(Lcom/instabug/featuresrequest/ui/custom/d$b;)V

    :goto_0
    return-void
.end method
