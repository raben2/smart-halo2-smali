.class public Lcom/instabug/library/instacapture/screenshot/FieldHelper;
.super Ljava/lang/Object;
.source "FieldHelper.java"


# static fields
.field private static final FIELD_NAME_GLOBAL:Ljava/lang/String; = "mGlobal"

.field private static final FIELD_NAME_PARAMS:Ljava/lang/String; = "mParams"

.field private static final FIELD_NAME_ROOTS:Ljava/lang/String; = "mRoots"

.field private static final FIELD_NAME_VIEW:Ljava/lang/String; = "mView"

.field private static final FIELD_NAME_WINDOW_MANAGER:Ljava/lang/String; = "mWindowManager"

.field private static outLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->outLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found in class: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "mWindowManager"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->findField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRootViews(Landroid/app/Activity;[I)Ljava/util/List;
    .locals 10
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/instabug/library/instacapture/screenshot/RootViewInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const-string v1, "mGlobal"

    .line 8
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    const-string v1, "mWindowManager"

    .line 11
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 12
    invoke-static {v1, p0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const-string v1, "mRoots"

    .line 16
    invoke-static {v1, p0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mParams"

    .line 17
    invoke-static {v2, p0}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 30
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 31
    check-cast p0, Ljava/util/List;

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/WindowManager$LayoutParams;

    goto :goto_1

    .line 35
    :cond_1
    check-cast v1, [Ljava/lang/Object;

    .line 36
    check-cast p0, [Landroid/view/WindowManager$LayoutParams;

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_6

    const-string v4, "mView"

    .line 42
    :try_start_3
    aget-object v5, v1, v3

    invoke-static {v4, v5}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 46
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget v8, p1, v6

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 53
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    .line 54
    new-instance v5, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    invoke-static {v4}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    aget-object v7, p0, v3

    invoke-direct {v5, v4, v6, v7}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;-><init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 58
    const-class v5, Lcom/instabug/library/instacapture/screenshot/FieldHelper;

    const-string v6, "Screenshot capturing failed in one of the viewRoots"

    invoke-static {v5, v6, v4}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    :catch_1
    move-exception p0

    .line 59
    const-class p1, Lcom/instabug/library/instacapture/screenshot/FieldHelper;

    const-string v1, "Can\'t fine one of (WindowManager, rootObjects, paramsObject) field name so screenshot capturing failed"

    invoke-static {p1, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    sget-object v0, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->outLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    sget-object v0, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->outLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aget v0, v0, v2

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method
