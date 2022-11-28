.class public Lcom/instabug/library/annotation/b;
.super Landroid/graphics/RectF;
.source "DirectionRectF.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/annotation/b$b;,
        Lcom/instabug/library/annotation/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/instabug/library/annotation/b$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/instabug/library/annotation/b$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/instabug/library/annotation/b$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public d:Lcom/instabug/library/annotation/b$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Landroid/graphics/PointF;

.field public f:Landroid/graphics/PointF;

.field public g:Landroid/graphics/PointF;

.field public h:Landroid/graphics/PointF;

.field public i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/instabug/library/annotation/b;->i:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/instabug/library/annotation/b;->j:Z

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    .line 25
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    .line 26
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    .line 27
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->i:Z

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/instabug/library/annotation/b;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/instabug/library/annotation/b;->i:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/instabug/library/annotation/b;->j:Z

    .line 22
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/b;->b(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method private b(Lcom/instabug/library/annotation/b;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->right:F

    iput p1, p0, Landroid/graphics/RectF;->top:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    .line 3
    iput-object v0, p0, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    .line 4
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->i:Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->j:Z

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 13
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 14
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 15
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 16
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->a:Lcom/instabug/library/annotation/b$a;

    .line 17
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->b:Lcom/instabug/library/annotation/b$b;

    .line 18
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->c:Lcom/instabug/library/annotation/b$a;

    .line 19
    iget-object v0, p1, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    iput-object v0, p0, Lcom/instabug/library/annotation/b;->d:Lcom/instabug/library/annotation/b$b;

    .line 21
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->e:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 22
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->f:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 23
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->g:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 24
    iget-object v0, p0, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/instabug/library/annotation/b;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 26
    iget-boolean v0, p1, Lcom/instabug/library/annotation/b;->i:Z

    iput-boolean v0, p0, Lcom/instabug/library/annotation/b;->i:Z

    .line 27
    invoke-virtual {p1}, Lcom/instabug/library/annotation/b;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->j:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/PointF;
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public a(Lcom/instabug/library/annotation/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/annotation/b;->b(Lcom/instabug/library/annotation/b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/annotation/b;->j:Z

    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .locals 3

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public c()[Landroid/graphics/PointF;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/annotation/b;->d()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/instabug/library/annotation/b;->e()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/instabug/library/annotation/b;->b()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/instabug/library/annotation/b;->a()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d()Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public e()Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/annotation/b;->j:Z

    return v0
.end method
