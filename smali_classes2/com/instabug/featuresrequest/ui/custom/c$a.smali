.class Lcom/instabug/featuresrequest/ui/custom/c$a;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "InstaToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/featuresrequest/ui/custom/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$a;->b:Lcom/instabug/featuresrequest/ui/custom/c;

    iput p2, p0, Lcom/instabug/featuresrequest/ui/custom/c$a;->a:I

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$a;->b:Lcom/instabug/featuresrequest/ui/custom/c;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$a;->a:I

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/c;->b(Lcom/instabug/featuresrequest/ui/custom/c;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$a;->b:Lcom/instabug/featuresrequest/ui/custom/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/custom/c;->c(Lcom/instabug/featuresrequest/ui/custom/c;)Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-virtual {p1, v0, v1}, Lcom/instabug/featuresrequest/ui/custom/SnackbarLayout;->b(II)V

    return-void
.end method
