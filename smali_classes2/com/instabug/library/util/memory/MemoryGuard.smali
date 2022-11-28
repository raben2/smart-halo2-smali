.class public Lcom/instabug/library/util/memory/MemoryGuard;
.super Ljava/lang/Object;
.source "MemoryGuard.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/util/memory/MemoryGuard;->a:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/util/memory/MemoryGuard;

    invoke-direct {v0, p0}, Lcom/instabug/library/util/memory/MemoryGuard;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public withPredicate(Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;
    .locals 3
    .param p1    # Lcom/instabug/library/util/memory/predicate/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/MemoryGuard;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/instabug/library/util/memory/predicate/Predicate;->setContext(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/instabug/library/util/memory/ActionExecutor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/util/memory/predicate/Predicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/instabug/library/util/memory/ActionExecutor;-><init>([Lcom/instabug/library/util/memory/predicate/Predicate;)V

    return-object v0
.end method

.method public varargs withPredicates([Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;
    .locals 4
    .param p1    # [Lcom/instabug/library/util/memory/predicate/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/instabug/library/util/memory/MemoryGuard;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/instabug/library/util/memory/predicate/Predicate;->setContext(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/instabug/library/util/memory/ActionExecutor;

    invoke-direct {v0, p1}, Lcom/instabug/library/util/memory/ActionExecutor;-><init>([Lcom/instabug/library/util/memory/predicate/Predicate;)V

    return-object v0
.end method
