.class public final enum Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;
.super Ljava/lang/Enum;
.source "ValhallaSurfaceTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Compacted:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Dirt:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Gravel:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Impassable:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Path:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum Paved:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum PavedRough:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public static final enum PavedSmooth:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "PavedSmooth"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedSmooth:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Paved"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Paved:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "PavedRough"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedRough:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Compacted"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Compacted:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Dirt"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Dirt:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Gravel"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Gravel:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Path"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const-string v1, "Impassable"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Impassable:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    const/16 v0, 0x8

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedSmooth:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Paved:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedRough:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Compacted:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Dirt:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Gravel:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Impassable:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    aput-object v1, v0, v9

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->type:I

    return-void
.end method

.method public static getSurfaceType(F)Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;
    .locals 0

    float-to-int p0, p0

    packed-switch p0, :pswitch_data_0

    .line 35
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedSmooth:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 34
    :pswitch_0
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Impassable:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 33
    :pswitch_1
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Gravel:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 31
    :pswitch_3
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Dirt:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 30
    :pswitch_4
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Compacted:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 29
    :pswitch_5
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedRough:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 28
    :pswitch_6
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->Paved:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->PavedSmooth:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;->type:I

    return v0
.end method
