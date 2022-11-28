.class public final Lcom/google/android/libraries/places/internal/fj;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PG"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/ex;

.field public b:I

.field public c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ex;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->d:Ljava/util/Map;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fj;->setHasStableIds(Z)V

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    new-instance v0, Lcom/google/android/libraries/places/internal/fk;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/fk;-><init>(Lcom/google/android/libraries/places/internal/fj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/ex;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/places/internal/fa;
    .locals 1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ex;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/fa;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 68
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 69
    throw v0
.end method

.method public final b()Lcom/google/android/libraries/places/internal/fe;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 71
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    return-object v0
.end method

.method public final synthetic getFilter()Landroid/widget/Filter;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fj;->a()Lcom/google/android/libraries/places/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ex;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 57
    throw v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ex;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ex;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 64
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 65
    throw p1
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ex;->getItemViewType(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 22
    throw p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/ex;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 24
    :pswitch_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/fj;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/fj;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    check-cast p1, Lcom/google/android/libraries/places/internal/fq;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 26
    iput p2, p1, Lcom/google/android/libraries/places/internal/fq;->a:I

    .line 27
    iput-boolean v0, p1, Lcom/google/android/libraries/places/internal/fq;->b:Z

    .line 28
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fq;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/libraries/places/internal/ex;->a(Landroid/view/View;I)V

    .line 29
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fq;->itemView:Landroid/view/View;

    new-instance v2, Lcom/google/android/libraries/places/internal/fr;

    invoke-direct {v2, p1, v1, p2}, Lcom/google/android/libraries/places/internal/fr;-><init>(Lcom/google/android/libraries/places/internal/fq;Lcom/google/android/libraries/places/internal/ex;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 31
    :pswitch_1
    check-cast p1, Lcom/google/android/libraries/places/internal/fp;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 32
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fp;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/ex;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 35
    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 36
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 9
    :pswitch_0
    sget p2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_prediction:I

    .line 10
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/google/android/libraries/places/internal/fq;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/fq;-><init>(Landroid/view/View;)V

    return-object p2

    .line 12
    :pswitch_1
    sget p2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_powered_by_google:I

    .line 13
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/google/android/libraries/places/internal/fp;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/fp;-><init>(Landroid/view/View;)V

    return-object p2

    .line 15
    :goto_0
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 18
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 2

    .line 38
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 39
    new-instance v0, Lcom/google/android/libraries/places/internal/fl;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/fl;-><init>(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 40
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/ex;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 45
    throw p1
.end method

.method public final unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 2

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fj;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ex;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fj;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 52
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 53
    throw p1
.end method
