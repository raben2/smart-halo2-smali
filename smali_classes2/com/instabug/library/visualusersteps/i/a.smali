.class public Lcom/instabug/library/visualusersteps/i/a;
.super Ljava/lang/Object;
.source "ActivityLayoutInspector.java"

# interfaces
.implements Lcom/instabug/library/visualusersteps/i/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/visualusersteps/i/c<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/instabug/library/visualusersteps/i/a;->a(Landroid/view/ViewGroup;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/instabug/library/visualusersteps/i/d;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/i/a;->b(Landroid/app/Activity;)Lcom/instabug/library/visualusersteps/i/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/i/a;->a(Landroid/view/ViewGroup;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Landroid/app/Activity;)Lcom/instabug/library/visualusersteps/i/d;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/i/e;

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/i/a;->a(Landroid/app/Activity;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/instabug/library/visualusersteps/i/e;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
