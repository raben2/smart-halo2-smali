.class final Lcom/google/android/libraries/places/internal/fl;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field private final synthetic a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fl;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fl;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 6
    throw v0
.end method

.method public final onInvalidated()V
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fl;->a:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 11
    throw v0
.end method
