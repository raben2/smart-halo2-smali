.class public final enum Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;
.super Ljava/lang/Enum;
.source "DestinationSelectionType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "Search",
        "Favourites",
        "History",
        "Longpress",
        "POI",
        "GPX",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum Favourites:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum GPX:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum History:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum Longpress:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum POI:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

.field public static final enum Search:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "Search"

    const-string v3, "search"

    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Search:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "Favourites"

    const-string v3, "favourites"

    const/4 v4, 0x1

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Favourites:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "History"

    const-string v3, "history"

    const/4 v4, 0x2

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->History:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "Longpress"

    const-string v3, "longpress"

    const/4 v4, 0x3

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Longpress:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "POI"

    const-string v3, "poi"

    const/4 v4, 0x4

    .line 12
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->POI:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    const-string v2, "GPX"

    const-string v3, "gpx"

    const/4 v4, 0x5

    .line 13
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->GPX:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->$VALUES:[Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;
    .locals 1

    const-class v0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->$VALUES:[Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->value:Ljava/lang/String;

    return-object v0
.end method
