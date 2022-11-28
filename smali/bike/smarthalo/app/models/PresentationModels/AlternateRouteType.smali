.class public final enum Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
.super Ljava/lang/Enum;
.source "AlternateRouteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field public static final enum Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field public static final enum Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field public static final enum Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

.field public static final enum Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const-string v1, "Recommended"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const-string v1, "Safest"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const-string v1, "Fastest"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const-string v1, "Flattest"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->value:I

    return v0
.end method
