.class public final enum Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
.super Ljava/lang/Enum;
.source "MetricsCarouselPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

.field public static final enum Unknown:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 21
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Navigation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 22
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Goal"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 23
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Distance"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 24
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Time"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 25
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Speed"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 26
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Calories"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 27
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Clock"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 28
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "AverageSpeed"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 29
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "CarbonDioxide"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 30
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Battery"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 31
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const-string v1, "Unknown"

    const/16 v12, 0xa

    const/4 v13, -0x1

    invoke-direct {v0, v1, v12, v13}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Unknown:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    const/16 v0, 0xb

    .line 20
    new-array v0, v0, [Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v11

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Unknown:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    aput-object v1, v0, v12

    sput-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->$VALUES:[Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->value:I

    return-void
.end method

.method public static getPosition(I)Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 66
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Unknown:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 64
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 62
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 60
    :pswitch_2
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 58
    :pswitch_3
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 56
    :pswitch_4
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 54
    :pswitch_5
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 52
    :pswitch_6
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 50
    :pswitch_7
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 48
    :pswitch_8
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    .line 46
    :pswitch_9
    sget-object p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
    .locals 1

    .line 20
    const-class v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
    .locals 1

    .line 20
    sget-object v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->$VALUES:[Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 36
    iget v0, p0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->value:I

    return v0
.end method
