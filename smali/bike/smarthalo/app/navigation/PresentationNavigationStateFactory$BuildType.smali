.class public final enum Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;
.super Ljava/lang/Enum;
.source "PresentationNavigationStateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

.field public static final enum DirectNavigation:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

.field public static final enum Initial:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

.field public static final enum Reroute:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Initial:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    .line 38
    new-instance v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const-string v1, "Reroute"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Reroute:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    .line 39
    new-instance v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const-string v1, "DirectNavigation"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->DirectNavigation:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    sget-object v1, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Initial:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->Reroute:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->DirectNavigation:Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->$VALUES:[Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;
    .locals 1

    .line 36
    const-class v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;
    .locals 1

    .line 36
    sget-object v0, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->$VALUES:[Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory$BuildType;

    return-object v0
.end method
