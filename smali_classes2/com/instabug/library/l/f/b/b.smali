.class public Lcom/instabug/library/l/f/b/b;
.super Lcom/instabug/library/l/f/b/a;
.source "MuteFloatingActionButton.java"


# instance fields
.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/l/f/b/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/l/f/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/l/f/b/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/l/f/b/b;->m:Z

    return p0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/instabug/library/l/f/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/l/f/b/a;->setSize(I)V

    .line 4
    sget p2, Lcom/instabug/library/R$id;->instabug_video_mute_button:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 6
    invoke-static {p1}, Lcom/instabug/library/view/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/b;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/l/f/b/b;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    const/high16 v0, -0x1000000

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/l/f/b/b;->m:Z

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/a;->a()V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/l/f/b/b;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/b;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/l/f/b/b;->c()V

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/instabug/library/l/f/b/b;->m:Z

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_icon_size_mini:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v6

    .line 2
    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_size_mini:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v5

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 6
    sget v0, Lcom/instabug/library/R$dimen;->instabug_fab_circle_icon_stroke:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/l/f/b/a;->b(I)F

    move-result v3

    .line 10
    new-instance v0, Lcom/instabug/library/l/f/b/b$a;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/instabug/library/l/f/b/b$a;-><init>(Lcom/instabug/library/l/f/b/b;FFFF)V

    .line 31
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 33
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method
