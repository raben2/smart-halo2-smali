.class public final enum Lcom/instabug/bug/model/a$c;
.super Ljava/lang/Enum;
.source "Bug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/bug/model/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/bug/model/a$c;

.field public static final enum DONE:Lcom/instabug/bug/model/a$c;

.field public static final enum FAILED:Lcom/instabug/bug/model/a$c;

.field public static final enum IN_PROGRESS:Lcom/instabug/bug/model/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/bug/model/a$c;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/bug/model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    new-instance v0, Lcom/instabug/bug/model/a$c;

    const-string v1, "FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/bug/model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/model/a$c;->FAILED:Lcom/instabug/bug/model/a$c;

    new-instance v0, Lcom/instabug/bug/model/a$c;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/bug/model/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/model/a$c;->DONE:Lcom/instabug/bug/model/a$c;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/bug/model/a$c;

    sget-object v5, Lcom/instabug/bug/model/a$c;->IN_PROGRESS:Lcom/instabug/bug/model/a$c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/bug/model/a$c;->FAILED:Lcom/instabug/bug/model/a$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/bug/model/a$c;->$VALUES:[Lcom/instabug/bug/model/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/bug/model/a$c;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/bug/model/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/bug/model/a$c;

    return-object p0
.end method

.method public static values()[Lcom/instabug/bug/model/a$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/model/a$c;->$VALUES:[Lcom/instabug/bug/model/a$c;

    invoke-virtual {v0}, [Lcom/instabug/bug/model/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/bug/model/a$c;

    return-object v0
.end method
