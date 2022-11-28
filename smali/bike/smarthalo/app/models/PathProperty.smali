.class public final enum Lbike/smarthalo/app/models/PathProperty;
.super Ljava/lang/Enum;
.source "PathProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PathProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PathProperty;

.field public static final enum CycleLane:Lbike/smarthalo/app/models/PathProperty;

.field public static final enum Default:Lbike/smarthalo/app/models/PathProperty;

.field public static final enum Grades:Lbike/smarthalo/app/models/PathProperty;

.field public static final enum Surface:Lbike/smarthalo/app/models/PathProperty;

.field private static vals:[Lbike/smarthalo/app/models/PathProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lbike/smarthalo/app/models/PathProperty;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/PathProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    .line 5
    new-instance v0, Lbike/smarthalo/app/models/PathProperty;

    const-string v1, "Grades"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/PathProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->Grades:Lbike/smarthalo/app/models/PathProperty;

    .line 6
    new-instance v0, Lbike/smarthalo/app/models/PathProperty;

    const-string v1, "CycleLane"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/PathProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    .line 7
    new-instance v0, Lbike/smarthalo/app/models/PathProperty;

    const-string v1, "Surface"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/PathProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->Surface:Lbike/smarthalo/app/models/PathProperty;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lbike/smarthalo/app/models/PathProperty;

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Default:Lbike/smarthalo/app/models/PathProperty;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Grades:Lbike/smarthalo/app/models/PathProperty;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Surface:Lbike/smarthalo/app/models/PathProperty;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->$VALUES:[Lbike/smarthalo/app/models/PathProperty;

    .line 9
    invoke-static {}, Lbike/smarthalo/app/models/PathProperty;->values()[Lbike/smarthalo/app/models/PathProperty;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/models/PathProperty;->vals:[Lbike/smarthalo/app/models/PathProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PathProperty;
    .locals 1

    .line 3
    const-class v0, Lbike/smarthalo/app/models/PathProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PathProperty;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PathProperty;
    .locals 1

    .line 3
    sget-object v0, Lbike/smarthalo/app/models/PathProperty;->$VALUES:[Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PathProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PathProperty;

    return-object v0
.end method


# virtual methods
.method public next()Lbike/smarthalo/app/models/PathProperty;
    .locals 3

    .line 12
    sget-object v0, Lbike/smarthalo/app/models/PathProperty;->vals:[Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lbike/smarthalo/app/models/PathProperty;->vals:[Lbike/smarthalo/app/models/PathProperty;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
