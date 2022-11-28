.class public final enum Lcom/mklimek/frameviedoview/ImplType;
.super Ljava/lang/Enum;
.source "ImplType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mklimek/frameviedoview/ImplType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mklimek/frameviedoview/ImplType;

.field public static final enum TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

.field public static final enum VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/mklimek/frameviedoview/ImplType;

    const-string v1, "TEXTURE_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mklimek/frameviedoview/ImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mklimek/frameviedoview/ImplType;->TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    .line 5
    new-instance v0, Lcom/mklimek/frameviedoview/ImplType;

    const-string v1, "VIDEO_VIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mklimek/frameviedoview/ImplType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mklimek/frameviedoview/ImplType;->VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/mklimek/frameviedoview/ImplType;

    sget-object v1, Lcom/mklimek/frameviedoview/ImplType;->TEXTURE_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mklimek/frameviedoview/ImplType;->VIDEO_VIEW:Lcom/mklimek/frameviedoview/ImplType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mklimek/frameviedoview/ImplType;->$VALUES:[Lcom/mklimek/frameviedoview/ImplType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mklimek/frameviedoview/ImplType;
    .locals 1

    .line 3
    const-class v0, Lcom/mklimek/frameviedoview/ImplType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mklimek/frameviedoview/ImplType;

    return-object p0
.end method

.method public static values()[Lcom/mklimek/frameviedoview/ImplType;
    .locals 1

    .line 3
    sget-object v0, Lcom/mklimek/frameviedoview/ImplType;->$VALUES:[Lcom/mklimek/frameviedoview/ImplType;

    invoke-virtual {v0}, [Lcom/mklimek/frameviedoview/ImplType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mklimek/frameviedoview/ImplType;

    return-object v0
.end method
