.class final Landroidx/databinding/ViewDataBinding$1;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$CreateWeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$WeakListener;
    .locals 1

    .line 93
    new-instance v0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;-><init>(Landroidx/databinding/ViewDataBinding;I)V

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->getListener()Landroidx/databinding/ViewDataBinding$WeakListener;

    move-result-object p1

    return-object p1
.end method