.class public final Lbike/smarthalo/app/navigationFlow/ViewProgressList;
.super Ljava/lang/Object;
.source "ViewProgressList.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewProgressList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewProgressList.kt\nbike/smarthalo/app/navigationFlow/ViewProgressList\n*L\n1#1,59:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\'\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0018H\u0016J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u001f\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0002\u0010\"R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/ViewProgressList;",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "context",
        "Landroid/content/Context;",
        "innerList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V",
        "adapter",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;",
        "getAdapter",
        "()Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;",
        "setAdapter",
        "(Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getInnerList",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setInnerList",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "decrement",
        "",
        "increment",
        "initialize",
        "size",
        "",
        "selectedIndex",
        "animation",
        "(IILjava/lang/Integer;)V",
        "selectItem",
        "index",
        "selectLast",
        "toggleVisibility",
        "isVisible",
        "",
        "(ZLjava/lang/Integer;)V",
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
.field private adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private innerList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iget-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 1

    .line 53
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->decrement()V

    :cond_0
    return-void
.end method

.method public final getAdapter()Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getInnerList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public increment()V
    .locals 1

    .line 57
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->increment()V

    :cond_0
    return-void
.end method

.method public initialize(IILjava/lang/Integer;)V
    .locals 4
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 31
    new-array v0, p1, [Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;

    invoke-direct {v3, v1}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;-><init>(Z)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ge p2, p1, :cond_1

    .line 33
    aget-object p1, v0, p2

    invoke-virtual {p1, v1}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;->setSelected(Z)V

    .line 35
    :cond_1
    new-instance p1, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    iget-object p2, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;-><init>([Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter$ViewProgressItem;Landroid/content/Context;)V

    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    .line 36
    iget-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    invoke-virtual {p0, v1, p3}, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->toggleVisibility(ZLjava/lang/Integer;)V

    return-void
.end method

.method public selectItem(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->selectItem(I)V

    :cond_0
    return-void
.end method

.method public selectLast()V
    .locals 2

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;->selectItem(I)V

    :cond_1
    return-void
.end method

.method public final setAdapter(Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->adapter:Lbike/smarthalo/app/navigationFlow/ViewProgressAdapter;

    return-void
.end method

.method public final setInnerList(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public toggleVisibility(ZLjava/lang/Integer;)V
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 22
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    :cond_0
    iget-object p2, p0, Lbike/smarthalo/app/navigationFlow/ViewProgressList;->innerList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
