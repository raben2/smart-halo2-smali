.class public final enum Lcom/instabug/survey/e/c/a$a;
.super Ljava/lang/Enum;
.source "ActionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/survey/e/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/survey/e/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/survey/e/c/a$a;

.field public static final enum DISMISS:Lcom/instabug/survey/e/c/a$a;

.field public static final enum RATE:Lcom/instabug/survey/e/c/a$a;

.field public static final enum SHOW:Lcom/instabug/survey/e/c/a$a;

.field public static final enum SUBMIT:Lcom/instabug/survey/e/c/a$a;

.field public static final enum UNDEFINED:Lcom/instabug/survey/e/c/a$a;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/instabug/survey/e/c/a$a;

    const-string v1, "SHOW"

    const-string v2, "show"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/survey/e/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/survey/e/c/a$a;->SHOW:Lcom/instabug/survey/e/c/a$a;

    new-instance v0, Lcom/instabug/survey/e/c/a$a;

    const-string v1, "DISMISS"

    const-string v2, "dismiss"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/survey/e/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    new-instance v0, Lcom/instabug/survey/e/c/a$a;

    const-string v1, "SUBMIT"

    const-string v2, "submit"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/survey/e/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    new-instance v0, Lcom/instabug/survey/e/c/a$a;

    const-string v1, "RATE"

    const-string v2, "rate"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/survey/e/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/survey/e/c/a$a;->RATE:Lcom/instabug/survey/e/c/a$a;

    new-instance v0, Lcom/instabug/survey/e/c/a$a;

    const-string v1, "UNDEFINED"

    const-string v2, "undefined"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/survey/e/c/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/survey/e/c/a$a;->UNDEFINED:Lcom/instabug/survey/e/c/a$a;

    const/4 v1, 0x5

    .line 2
    new-array v1, v1, [Lcom/instabug/survey/e/c/a$a;

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->SHOW:Lcom/instabug/survey/e/c/a$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->RATE:Lcom/instabug/survey/e/c/a$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/instabug/survey/e/c/a$a;->$VALUES:[Lcom/instabug/survey/e/c/a$a;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/survey/e/c/a$a;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/survey/e/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/survey/e/c/a$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/survey/e/c/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/survey/e/c/a$a;->$VALUES:[Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {v0}, [Lcom/instabug/survey/e/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/survey/e/c/a$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/a$a;->event:Ljava/lang/String;

    return-object v0
.end method
