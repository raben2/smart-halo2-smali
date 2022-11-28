.class public final enum Lbike/smarthalo/app/models/SHMapPath$Pattern;
.super Ljava/lang/Enum;
.source "SHMapPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/SHMapPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/SHMapPath$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/SHMapPath$Pattern;

.field public static final enum DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

.field public static final enum FullLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;

    const-string v1, "FullLine"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/SHMapPath$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->FullLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    .line 31
    new-instance v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;

    const-string v1, "DottedLine"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/SHMapPath$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Lbike/smarthalo/app/models/SHMapPath$Pattern;

    sget-object v1, Lbike/smarthalo/app/models/SHMapPath$Pattern;->FullLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/SHMapPath$Pattern;->DottedLine:Lbike/smarthalo/app/models/SHMapPath$Pattern;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->$VALUES:[Lbike/smarthalo/app/models/SHMapPath$Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/SHMapPath$Pattern;
    .locals 1

    .line 29
    const-class v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHMapPath$Pattern;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/SHMapPath$Pattern;
    .locals 1

    .line 29
    sget-object v0, Lbike/smarthalo/app/models/SHMapPath$Pattern;->$VALUES:[Lbike/smarthalo/app/models/SHMapPath$Pattern;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/SHMapPath$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/SHMapPath$Pattern;

    return-object v0
.end method
