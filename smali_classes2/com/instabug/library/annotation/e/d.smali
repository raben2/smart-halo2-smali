.class public Lcom/instabug/library/annotation/e/d;
.super Ljava/lang/Object;
.source "RectPath.java"


# instance fields
.field a:Landroid/graphics/Path;

.field b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/e/d;->a:Landroid/graphics/Path;

    return-void
.end method
