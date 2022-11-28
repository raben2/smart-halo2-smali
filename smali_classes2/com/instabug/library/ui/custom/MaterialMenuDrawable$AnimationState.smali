.class public final enum Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;
.super Ljava/lang/Enum;
.source "MaterialMenuDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/ui/custom/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum ARROW_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum ARROW_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

.field public static final enum X_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "BURGER_ARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "BURGER_X"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "ARROW_X"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "ARROW_CHECK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->ARROW_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "BURGER_CHECK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    new-instance v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const-string v1, "X_CHECK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    const/4 v1, 0x6

    .line 2
    new-array v1, v1, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    sget-object v8, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    aput-object v8, v1, v2

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->ARROW_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->BURGER_CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->$VALUES:[Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    invoke-virtual {v0}, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/ui/custom/MaterialMenuDrawable$AnimationState;

    return-object v0
.end method


# virtual methods
.method public getFirstState()Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$3;->$SwitchMap$com$instabug$library$ui$custom$MaterialMenuDrawable$AnimationState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 14
    :pswitch_1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 15
    :pswitch_2
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 18
    :pswitch_5
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->BURGER:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSecondState()Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$3;->$SwitchMap$com$instabug$library$ui$custom$MaterialMenuDrawable$AnimationState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 14
    :pswitch_1
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 15
    :pswitch_2
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->CHECK:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->X:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    .line 18
    :pswitch_5
    sget-object v0, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
