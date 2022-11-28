.class public final enum Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;
.super Ljava/lang/Enum;
.source "SignUpProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignUpResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;",
        "",
        "(Ljava/lang/String;I)V",
        "EmailTaken",
        "Success",
        "Failure",
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
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

.field public static final enum EmailTaken:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

.field public static final enum Failure:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

.field public static final enum Success:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    const-string v2, "EmailTaken"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->EmailTaken:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    const-string v2, "Success"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Success:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    const-string v2, "Failure"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Failure:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->$VALUES:[Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;
    .locals 1

    const-class v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->$VALUES:[Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-virtual {v0}, [Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    return-object v0
.end method
