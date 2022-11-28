.class public abstract Lcom/jakewharton/rxbinding2/view/ViewGroupHierarchyChangeEvent;
.super Ljava/lang/Object;
.source "ViewGroupHierarchyChangeEvent.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract child()Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract view()Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
