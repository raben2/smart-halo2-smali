.class public final enum Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;
.super Ljava/lang/Enum;
.source "ValhallaCycleLaneTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

.field public static final enum Dedicated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

.field public static final enum NoCycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

.field public static final enum Separated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

.field public static final enum Shared:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    const-string v1, "NoCycleLane"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->NoCycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    const-string v1, "Shared"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Shared:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    const-string v1, "Dedicated"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Dedicated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    const-string v1, "Separated"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Separated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->NoCycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Shared:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Dedicated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Separated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->type:I

    return-void
.end method

.method public static getCycleLaneType(F)Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;
    .locals 0

    float-to-int p0, p0

    packed-switch p0, :pswitch_data_0

    .line 27
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->NoCycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0

    .line 26
    :pswitch_0
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Separated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0

    .line 25
    :pswitch_1
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Dedicated:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0

    .line 24
    :pswitch_2
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->Shared:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0

    .line 23
    :pswitch_3
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->NoCycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 18
    iget v0, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;->type:I

    return v0
.end method
