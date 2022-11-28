.class public final enum Lbike/smarthalo/app/models/FavouriteType;
.super Ljava/lang/Enum;
.source "FavouriteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/FavouriteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/FavouriteType;

.field public static final enum FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

.field public static final enum HOME:Lbike/smarthalo/app/models/FavouriteType;

.field public static final enum WORK:Lbike/smarthalo/app/models/FavouriteType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/FavouriteType;

    const-string v1, "FAVOURITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/FavouriteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouriteType;->FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/FavouriteType;

    const-string v1, "HOME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/FavouriteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/FavouriteType;

    const-string v1, "WORK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/FavouriteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/FavouriteType;

    sget-object v1, Lbike/smarthalo/app/models/FavouriteType;->FAVOURITE:Lbike/smarthalo/app/models/FavouriteType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/FavouriteType;->$VALUES:[Lbike/smarthalo/app/models/FavouriteType;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/FavouriteType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/FavouriteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/FavouriteType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/FavouriteType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->$VALUES:[Lbike/smarthalo/app/models/FavouriteType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/FavouriteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/FavouriteType;

    return-object v0
.end method
