.class public final Lcom/google/android/libraries/places/internal/et;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PG"


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/et;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/et;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fs;->i()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    :cond_0
    :goto_1
    return-void
.end method
