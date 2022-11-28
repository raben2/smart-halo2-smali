.class Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->animateTo(FFLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

.field final synthetic val$alphaDiff:F

.field final synthetic val$beginAlpha:F

.field final synthetic val$beginTranslation:F

.field final synthetic val$translationDiff:F


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;FFFF)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    iput p2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$beginTranslation:F

    iput p3, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$translationDiff:F

    iput p4, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$beginAlpha:F

    iput p5, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$alphaDiff:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 292
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$beginTranslation:F

    .line 293
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$translationDiff:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 294
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$beginAlpha:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->val$alphaDiff:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 295
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setTranslationX(F)V

    .line 296
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener$2;->this$0:Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;

    invoke-virtual {p1, v1}, Lcom/google/firebase/inappmessaging/display/internal/SwipeDismissTouchListener;->setAlpha(F)V

    return-void
.end method
