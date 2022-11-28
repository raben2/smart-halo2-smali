.class public Lcom/instabug/library/instacapture/screenshot/RootViewInfo;
.super Ljava/lang/Object;
.source "RootViewInfo.java"


# instance fields
.field private final layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final left:I

.field private final rect:Landroid/graphics/Rect;

.field private final top:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->view:Landroid/view/View;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 5
    aget p1, v0, p1

    iput p1, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->left:I

    const/4 p1, 0x1

    .line 6
    aget p1, v0, p1

    iput p1, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->top:I

    .line 7
    iput-object p2, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->rect:Landroid/graphics/Rect;

    .line 8
    iput-object p3, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->left:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->top:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->view:Landroid/view/View;

    return-object v0
.end method

.method public isDialog()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
