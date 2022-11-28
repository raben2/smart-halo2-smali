.class public final enum Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
.super Ljava/lang/Enum;
.source "FiamAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum LEFT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum RIGHT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

.field public static final enum TOP:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->LEFT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 87
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->RIGHT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 88
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v1, "TOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->TOP:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    .line 89
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const-string v1, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    const/4 v0, 0x4

    .line 85
    new-array v0, v0, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    sget-object v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->LEFT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->RIGHT:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->TOP:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;
    .locals 0

    .line 85
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->getPoint(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static getPoint(Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;Landroid/view/View;)Landroid/graphics/Point;
    .locals 1

    const/4 v0, -0x2

    .line 92
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 94
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$3;->$SwitchMap$com$google$firebase$inappmessaging$display$internal$FiamAnimator$Position:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 104
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 102
    :pswitch_0
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 100
    :pswitch_1
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 98
    :pswitch_2
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 96
    :pswitch_3
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .locals 1

    .line 85
    const-class v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;
    .locals 1

    .line 85
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator$Position;

    return-object v0
.end method
