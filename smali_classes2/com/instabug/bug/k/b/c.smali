.class public Lcom/instabug/bug/k/b/c;
.super Ljava/lang/Object;
.source "ViewHierarchyInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/k/b/c$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [I

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method static synthetic a(Lcom/instabug/bug/k/b/b;)Lcom/instabug/bug/k/b/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/bug/k/b/c;->k(Lcom/instabug/bug/k/b/b;)Lcom/instabug/bug/k/b/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "notIdentified"

    return-object p0

    :pswitch_1
    const-string p0, "alignParentEnd"

    return-object p0

    :pswitch_2
    const-string p0, "alignParentStart"

    return-object p0

    :pswitch_3
    const-string p0, "alignEnd"

    return-object p0

    :pswitch_4
    const-string p0, "alignStart"

    return-object p0

    :pswitch_5
    const-string p0, "startOf"

    return-object p0

    :pswitch_6
    const-string p0, "centerVertical"

    return-object p0

    :pswitch_7
    const-string p0, "centerHorizontal"

    return-object p0

    :pswitch_8
    const-string p0, "centerInParent"

    return-object p0

    :pswitch_9
    const-string p0, "alignParentBottom"

    return-object p0

    :pswitch_a
    const-string p0, "alignParentRight"

    return-object p0

    :pswitch_b
    const-string p0, "alignParentTop"

    return-object p0

    :pswitch_c
    const-string p0, "alignParentLeft"

    return-object p0

    :pswitch_d
    const-string p0, "alignBottom"

    return-object p0

    :pswitch_e
    const-string p0, "alignRight"

    return-object p0

    :pswitch_f
    const-string p0, "alignTop"

    return-object p0

    :pswitch_10
    const-string p0, "alignLeft"

    return-object p0

    :pswitch_11
    const-string p0, "alignBaseline"

    return-object p0

    :pswitch_12
    const-string p0, "below"

    return-object p0

    :pswitch_13
    const-string p0, "above"

    return-object p0

    :pswitch_14
    const-string p0, "rightOf"

    return-object p0

    :pswitch_15
    const-string p0, "leftOf"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 8
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Activity;I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, p1

    const-string v2, "w"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, p1

    const-string p1, "h"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v1, "margin_top"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const-string v2, "margin_bottom"

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v2, "margin_left"

    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const-string v2, "margin_right"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object p1

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 26
    aget v1, p1, v0

    if-lez v1, :cond_0

    .line 27
    aget v1, p1, v0

    invoke-static {p0, v1}, Lcom/instabug/bug/k/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 29
    :cond_0
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_1
    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/FrameLayout$LayoutParams;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v1, "gravity"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-string v1, "margin_top"

    .line 15
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string v1, "margin_bottom"

    .line 16
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const-string v1, "margin_left"

    .line 17
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const-string v0, "margin_right"

    .line 18
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method private static a(Landroid/widget/LinearLayout$LayoutParams;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 9
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string v1, "gravity"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-string v1, "margin_top"

    .line 10
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-string v1, "margin_bottom"

    .line 11
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-string v1, "margin_left"

    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const-string v0, "margin_right"

    .line 13
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public static b(Lcom/instabug/bug/k/b/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/bug/k/b/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/bug/k/b/b;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->f()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/k/b/b;

    .line 26
    invoke-static {v1}, Lcom/instabug/bug/k/b/c;->b(Lcom/instabug/bug/k/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/instabug/bug/k/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const-string v3, "padding_top"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    const-string v3, "padding_bottom"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const-string v3, "padding_right"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const-string v3, "padding_left"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const-string v3, "visibility"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    const-string v2, "padding_end"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    const-string v3, "padding_start"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "x"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "y"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v0}, Lcom/instabug/bug/k/b/c;->a(Landroid/widget/LinearLayout$LayoutParams;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v0}, Lcom/instabug/bug/k/b/c;->a(Landroid/widget/FrameLayout$LayoutParams;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, p0, v0}, Lcom/instabug/bug/k/b/c;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static c(Lcom/instabug/bug/k/b/b;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/bug/k/b/b;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/bug/k/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/bug/k/b/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/k/b/c$a;-><init>(Lcom/instabug/bug/k/b/b;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/instabug/bug/k/b/b;)I
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private static d(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "ScrollView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "TableLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "EditText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "ListView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "FrameLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "SearchView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "LinearLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "ImageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "ToggleButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "RadioButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "GridView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_d
    const-string v1, "RelativeLayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_e
    const-string v1, "TableRow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "ImageButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_10
    const-string v1, "TextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_11
    const-string v1, "VideoView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string v1, "HorizontalScrollView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_13
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_14
    const-string v1, "WebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_15
    const-string v1, "ProgressBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p0, "default"

    return-object p0

    :pswitch_0
    const-string p0, "ToggleButton"

    return-object p0

    :pswitch_1
    const-string p0, "SearchView"

    return-object p0

    :pswitch_2
    const-string p0, "WebView"

    return-object p0

    :pswitch_3
    const-string p0, "VideoView"

    return-object p0

    :pswitch_4
    const-string p0, "RadioButton"

    return-object p0

    :pswitch_5
    const-string p0, "ProgressBar"

    return-object p0

    :pswitch_6
    const-string p0, "ListView"

    return-object p0

    :pswitch_7
    const-string p0, "GridView"

    return-object p0

    :pswitch_8
    const-string p0, "HorizontalScrollView"

    return-object p0

    :pswitch_9
    const-string p0, "ScrollView"

    return-object p0

    :pswitch_a
    const-string p0, "MultiAutoCompleteTextView"

    return-object p0

    :pswitch_b
    const-string p0, "AutoCompleteTextView"

    return-object p0

    :pswitch_c
    const-string p0, "TextView"

    return-object p0

    :pswitch_d
    const-string p0, "EditText"

    return-object p0

    :pswitch_e
    const-string p0, "ImageView"

    return-object p0

    :pswitch_f
    const-string p0, "ImageButton"

    return-object p0

    :pswitch_10
    const-string p0, "Button"

    return-object p0

    :pswitch_11
    const-string p0, "TableRow"

    return-object p0

    :pswitch_12
    const-string p0, "TableLayout"

    return-object p0

    :pswitch_13
    const-string p0, "FrameLayout"

    return-object p0

    :pswitch_14
    const-string p0, "RelativeLayout"

    return-object p0

    .line 3
    :pswitch_15
    check-cast p0, Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "HorizontalLinearLayout"

    return-object p0

    :cond_1
    const-string p0, "VerticalLinearLayout"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5924e17a -> :sswitch_15
        -0x53dab807 -> :sswitch_14
        -0x503aa7ad -> :sswitch_13
        -0x4314d98a -> :sswitch_12
        -0x3919d260 -> :sswitch_11
        -0x37f7066e -> :sswitch_10
        -0x37e04bb3 -> :sswitch_f
        -0x3184d0b4 -> :sswitch_e
        -0x1a719aca -> :sswitch_d
        0x16d08b2b -> :sswitch_c
        0x2e46a6ed -> :sswitch_b
        0x2fa453c6 -> :sswitch_a
        0x431b5280 -> :sswitch_9
        0x43311acf -> :sswitch_8
        0x4c79dc8d -> :sswitch_7
        0x4e20b2d7 -> :sswitch_6
        0x54104483 -> :sswitch_5
        0x5445f9ba -> :sswitch_4
        0x63577677 -> :sswitch_3
        0x66253878 -> :sswitch_2
        0x77471352 -> :sswitch_1
        0x7ac64332 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Lcom/instabug/bug/k/b/b;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private static f(Lcom/instabug/bug/k/b/b;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/2addr v1, v2

    if-le v0, v1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private static g(Lcom/instabug/bug/k/b/b;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/2addr v1, v2

    if-le v0, v1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private static h(Lcom/instabug/bug/k/b/b;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/instabug/library/R$id;->instabug_extra_screenshot_button:I

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/instabug/library/R$id;->instabug_floating_button:I

    if-eq v3, v4, :cond_0

    .line 6
    new-instance v3, Lcom/instabug/bug/k/b/b;

    invoke-direct {v3}, Lcom/instabug/bug/k/b/b;-><init>()V

    .line 7
    invoke-virtual {v3, v1}, Lcom/instabug/bug/k/b/b;->b(Z)V

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instabug/bug/k/b/b;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instabug/bug/k/b/b;->a(Landroid/view/View;)V

    .line 10
    invoke-virtual {v3, p0}, Lcom/instabug/bug/k/b/b;->b(Lcom/instabug/bug/k/b/b;)V

    .line 11
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instabug/bug/k/b/b;->a(I)V

    .line 12
    invoke-static {v3}, Lcom/instabug/bug/k/b/c;->k(Lcom/instabug/bug/k/b/b;)Lcom/instabug/bug/k/b/b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/instabug/bug/k/b/b;->a(Lcom/instabug/bug/k/b/b;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static i(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->j()I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->j()I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->j()I

    move-result v2

    div-int/2addr v1, v2

    const-string v2, "w"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->m()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->j()I

    move-result p0

    div-int/2addr v1, p0

    const-string p0, "h"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Lcom/instabug/bug/k/b/b;)Landroid/graphics/Rect;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->h()Lcom/instabug/bug/k/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 7
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 8
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 9
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->g()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->h()Lcom/instabug/bug/k/b/b;

    move-result-object v3

    invoke-static {v3}, Lcom/instabug/bug/k/b/c;->f(Lcom/instabug/bug/k/b/b;)I

    move-result v3

    .line 12
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->h()Lcom/instabug/bug/k/b/b;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/bug/k/b/c;->g(Lcom/instabug/bug/k/b/b;)I

    move-result v4

    .line 13
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->h()Lcom/instabug/bug/k/b/b;

    move-result-object v5

    invoke-static {v5}, Lcom/instabug/bug/k/b/c;->e(Lcom/instabug/bug/k/b/b;)I

    move-result v5

    .line 14
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->h()Lcom/instabug/bug/k/b/b;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/bug/k/b/c;->d(Lcom/instabug/bug/k/b/b;)I

    move-result p0

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 18
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 22
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static k(Lcom/instabug/bug/k/b/b;)Lcom/instabug/bug/k/b/b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->b(Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/k/b/c;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->a(Landroid/graphics/Rect;)V

    .line 7
    invoke-static {p0}, Lcom/instabug/bug/k/b/c;->j(Lcom/instabug/bug/k/b/b;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->b(Landroid/graphics/Rect;)V

    .line 8
    invoke-static {p0}, Lcom/instabug/bug/k/b/c;->i(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->a(Lorg/json/JSONObject;)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->l()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->a(Z)V

    .line 12
    invoke-static {p0}, Lcom/instabug/bug/k/b/c;->h(Lcom/instabug/bug/k/b/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/instabug/bug/k/b/b;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inspect view hierarchy got error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",View hierarchy id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/bug/k/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time in MS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewHierarchyInspector"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method
