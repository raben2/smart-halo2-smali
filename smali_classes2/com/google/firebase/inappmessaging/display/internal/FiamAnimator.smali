.class public Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
.super Ljava/lang/Object;
.source "FiamAnimator.java"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/display/internal/injection/scopes/FirebaseAppScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;,
        Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public slideIntoView(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38
    invoke-static {p3, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p3

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    .line 42
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v0, 0x1

    .line 43
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;Landroid/view/View;Landroid/app/Application;)V

    .line 44
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public slideOutOfView(Landroid/app/Application;Landroid/view/View;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;)V
    .locals 1

    .line 66
    invoke-static {p3, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p3

    .line 68
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$2;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$2;-><init>(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$AnimationCompleteListener;)V

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p4, p3, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    .line 79
    invoke-virtual {p2, p4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 81
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0002

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p3, p1

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
