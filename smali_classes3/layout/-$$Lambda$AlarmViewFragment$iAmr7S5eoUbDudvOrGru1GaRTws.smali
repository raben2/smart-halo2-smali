.class public final synthetic Llayout/-$$Lambda$AlarmViewFragment$iAmr7S5eoUbDudvOrGru1GaRTws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field private final synthetic f$0:Llayout/AlarmViewFragment;


# direct methods
.method public synthetic constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$AlarmViewFragment$iAmr7S5eoUbDudvOrGru1GaRTws;->f$0:Llayout/AlarmViewFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$AlarmViewFragment$iAmr7S5eoUbDudvOrGru1GaRTws;->f$0:Llayout/AlarmViewFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Llayout/AlarmViewFragment;->lambda$subscribeToAlarmTriggersUpdate$1(Llayout/AlarmViewFragment;IZ)Llayout/AlarmViewFragment$AlarmTriggerState;

    move-result-object p1

    return-object p1
.end method
