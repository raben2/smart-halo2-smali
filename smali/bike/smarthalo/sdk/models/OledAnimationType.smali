.class public final enum Lbike/smarthalo/sdk/models/OledAnimationType;
.super Ljava/lang/Enum;
.source "OledAnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/models/OledAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/models/OledAnimationType;

.field public static final enum Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

.field public static final enum Left:Lbike/smarthalo/sdk/models/OledAnimationType;

.field public static final enum None:Lbike/smarthalo/sdk/models/OledAnimationType;

.field public static final enum Right:Lbike/smarthalo/sdk/models/OledAnimationType;

.field public static final enum Top:Lbike/smarthalo/sdk/models/OledAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/models/OledAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    const-string v1, "Left"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/models/OledAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    const-string v1, "Right"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/models/OledAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    const-string v1, "Bottom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/sdk/models/OledAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    const-string v1, "Top"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/sdk/models/OledAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/models/OledAnimationType;

    sget-object v1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->$VALUES:[Lbike/smarthalo/sdk/models/OledAnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getByteValue(Lbike/smarthalo/sdk/models/OledAnimationType;)B
    .locals 1

    .line 15
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType$1;->$SwitchMap$bike$smarthalo$sdk$models$OledAnimationType:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/OledAnimationType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/models/OledAnimationType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/models/OledAnimationType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/models/OledAnimationType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->$VALUES:[Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/models/OledAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/models/OledAnimationType;

    return-object v0
.end method
