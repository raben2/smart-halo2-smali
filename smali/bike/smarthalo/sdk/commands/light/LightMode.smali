.class public final enum Lbike/smarthalo/sdk/commands/light/LightMode;
.super Ljava/lang/Enum;
.source "LightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/commands/light/LightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/commands/light/LightMode;

.field public static final enum Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

.field public static final LIGHT_MODE_BLINKING:I = 0x1

.field public static final LIGHT_MODE_NORMAL:I

.field public static final enum Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

.field public static final enum Unknown:Lbike/smarthalo/sdk/commands/light/LightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/commands/light/LightMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/commands/light/LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/commands/light/LightMode;

    const-string v1, "Blinking"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/commands/light/LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/commands/light/LightMode;

    const-string v1, "Unknown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/commands/light/LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Unknown:Lbike/smarthalo/sdk/commands/light/LightMode;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/commands/light/LightMode;

    sget-object v1, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/commands/light/LightMode;->Unknown:Lbike/smarthalo/sdk/commands/light/LightMode;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->$VALUES:[Lbike/smarthalo/sdk/commands/light/LightMode;

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

.method public static build(I)Lbike/smarthalo/sdk/commands/light/LightMode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 33
    sget-object p0, Lbike/smarthalo/sdk/commands/light/LightMode;->Unknown:Lbike/smarthalo/sdk/commands/light/LightMode;

    return-object p0

    .line 31
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/commands/light/LightMode;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/commands/light/LightMode;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/commands/light/LightMode;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->$VALUES:[Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/commands/light/LightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/commands/light/LightMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .line 16
    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode$1;->$SwitchMap$bike$smarthalo$sdk$commands$light$LightMode:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/commands/light/LightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
