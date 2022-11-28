.class final Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MaterialMenuDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/ui/custom/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaterialMenuState"
.end annotation


# instance fields
.field private changingConfigurations:I

.field final synthetic this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;


# direct methods
.method private constructor <init>(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;Lcom/instabug/library/ui/custom/MaterialMenuDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;-><init>(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)V

    return-void
.end method

.method static synthetic access$402(Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->changingConfigurations:I

    return p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->changingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 1
    new-instance v12, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    .line 2
    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$500(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$600(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    move-result-object v2

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$700(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    .line 3
    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$800(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)I

    move-result v5

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$900(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)I

    move-result v6

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1000(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)F

    move-result v7

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1100(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)F

    move-result v8

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1200(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)F

    move-result v9

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1300(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)F

    move-result v10

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;-><init>(ILcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;JIIFFFFLcom/instabug/library/ui/custom/MaterialMenuDrawable$1;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$300(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$300(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1500(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    move-result-object v0

    :goto_0
    invoke-virtual {v12, v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->setIconState(Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1600(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->setVisible(Z)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$MaterialMenuState;->this$0:Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    invoke-static {v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->access$1700(Lcom/instabug/library/ui/custom/MaterialMenuDrawable;)Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->setRTLEnabled(Z)V

    return-object v12
.end method
