.class public final enum Lbike/smarthalo/app/models/PresentationModels/MetricType;
.super Ljava/lang/Enum;
.source "MetricType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationModels/MetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field public static final enum Climb:Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field public static final enum Clock:Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field public static final enum Distance:Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field public static final enum Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field public static final enum Time:Lbike/smarthalo/app/models/PresentationModels/MetricType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const-string v1, "Speed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/PresentationModels/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const-string v1, "Time"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/PresentationModels/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Time:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const-string v1, "Distance"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/PresentationModels/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Distance:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const-string v1, "Climb"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/PresentationModels/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Climb:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const-string v1, "Clock"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/PresentationModels/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Clock:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/MetricType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Time:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Distance:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Climb:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Clock:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/MetricType;

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

.method public static getNextMetric(Lbike/smarthalo/app/models/PresentationModels/MetricType;)Lbike/smarthalo/app/models/PresentationModels/MetricType;
    .locals 1

    .line 15
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MetricType:[I

    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationModels/MetricType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 27
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

    .line 25
    :pswitch_0
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

    .line 23
    :pswitch_1
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Clock:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Climb:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

    .line 19
    :pswitch_3
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Distance:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

    .line 17
    :pswitch_4
    sget-object p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Time:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/MetricType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationModels/MetricType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationModels/MetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationModels/MetricType;

    return-object v0
.end method
