.class Lcom/instabug/survey/ui/SurveyActivity$f;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/SurveyActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/SurveyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$f;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$f;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->d(Lcom/instabug/survey/ui/SurveyActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$f;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {p1}, Lcom/instabug/survey/ui/SurveyActivity;->d(Lcom/instabug/survey/ui/SurveyActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
