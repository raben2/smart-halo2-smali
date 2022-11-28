.class final Lcom/google/android/libraries/places/internal/fo;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private final synthetic c:Landroid/view/ViewPropertyAnimator;

.field private final synthetic d:Lcom/google/android/libraries/places/internal/fn;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fn;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fo;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fo;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/view/View;

    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fn;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 13
    throw p1
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 15
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/fn;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fn;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fn;->a()V

    .line 19
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->c:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 22
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 23
    throw p1
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fo;->d:Lcom/google/android/libraries/places/internal/fn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fo;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/fn;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 7
    throw p1
.end method
