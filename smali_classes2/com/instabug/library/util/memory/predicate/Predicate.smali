.class public abstract Lcom/instabug/library/util/memory/predicate/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/Predicate;->a:Landroid/content/Context;

    return-object v0
.end method

.method public abstract check()Z
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/memory/predicate/Predicate;->a:Landroid/content/Context;

    return-void
.end method
