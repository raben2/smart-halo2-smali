.class public final Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ViewProgressAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;,
        Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewProgressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewProgressAdapter.kt\nbike/smarthalo/app/navigationFlow/ViewProgressAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,78:1\n925#2,2:79\n1391#2,6:81\n1391#2,6:87\n*E\n*S KotlinDebug\n*F\n+ 1 ViewProgressAdapter.kt\nbike/smarthalo/app/navigationFlow/ViewProgressAdapter\n*L\n30#1,2:79\n39#1,6:81\n46#1,6:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0006\u0010\u0019\u001a\u00020\u0013J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0018\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0015H\u0016J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;",
        "items",
        "",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;",
        "context",
        "Landroid/content/Context;",
        "([Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getItems",
        "()[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;",
        "setItems",
        "([Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;)V",
        "[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;",
        "decrement",
        "",
        "getItemCount",
        "",
        "getItemId",
        "",
        "position",
        "increment",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "selectItem",
        "index",
        "ViewProgressItem",
        "ViewProgressItemLayout",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;Landroid/content/Context;)V
    .locals 1
    .param p1    # [Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    iput-object p2, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final decrement()V
    .locals 4

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    .line 81
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 82
    aget-object v3, v0, v2

    .line 39
    invoke-virtual {v3}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 41
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->selectItem(I)V

    :cond_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItems()[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    return-object v0
.end method

.method public final increment()V
    .locals 4

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 88
    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 47
    :goto_1
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 48
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->selectItem(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->onBindViewHolder(Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;I)V

    return-void
.end method

.method public onBindViewHolder(Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;I)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    aget-object p2, v0, p2

    .line 72
    invoke-virtual {p2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060128

    goto :goto_0

    :cond_0
    const p2, 0x7f0600c3

    .line 74
    :goto_0
    invoke-virtual {p1}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;->getCircleShape()Landroid/widget/ImageView;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0043

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "itemView"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItemLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public final selectItem(I)V
    .locals 6

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    .line 79
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 30
    invoke-virtual {v4}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v4, v2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->setSelected(Z)V

    .line 33
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->setSelected(Z)V

    .line 35
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setItems([Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;)V
    .locals 1
    .param p1    # [Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->items:[Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    return-void
.end method
