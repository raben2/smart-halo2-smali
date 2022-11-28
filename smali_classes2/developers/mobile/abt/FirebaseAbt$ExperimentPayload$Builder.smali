.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1876
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$500()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Ldevelopers/mobile/abt/FirebaseAbt$1;)V
    .locals 0

    .line 1869
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOngoingExperiments(Ljava/lang/Iterable;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;)",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;"
        }
    .end annotation

    .line 2855
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2856
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2839
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2840
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2841
    invoke-virtual {p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 2840
    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2809
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2810
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2824
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2825
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public addOngoingExperiments(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2794
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2795
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public clearActivateEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2395
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2396
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearClearEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2469
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2470
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearExperimentId()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1945
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1946
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearExperimentStartTimeMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2081
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2082
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearOngoingExperiments()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2869
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2870
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2709
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2710
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearSetEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2321
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2322
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTimeToLiveMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2263
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2264
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTimeoutEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2547
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2548
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTriggerEvent()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2135
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2136
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTriggerTimeoutMillis()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2202
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2203
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearTtlExpiryEventToLog()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2626
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2627
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public clearVariantId()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2022
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2023
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;)V

    return-object p0
.end method

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 1

    .line 2353
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2367
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 1

    .line 2427
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2441
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getClearEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 1894
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1911
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 2054
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getExperimentStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
    .locals 1

    .line 2751
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    move-result-object p1

    return-object p1
.end method

.method public getOngoingExperimentsCount()I
    .locals 1

    .line 2739
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperimentsCount()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2726
    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOngoingExperimentsList()Ljava/util/List;

    move-result-object v0

    .line 2725
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 1

    .line 2684
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOverflowPolicy()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicyValue()I
    .locals 1

    .line 2658
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getOverflowPolicyValue()I

    move-result v0

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 1

    .line 2279
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2293
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getSetEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 2224
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeToLiveMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 1

    .line 2502
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2517
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 2096
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2109
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerEventBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 2169
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTriggerTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 1

    .line 2581
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2596
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 1980
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1994
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->getVariantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeOngoingExperiments(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2883
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2884
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$4400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V

    return-object p0
.end method

.method public setActivateEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2381
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2382
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2411
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2412
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClearEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2455
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2456
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2485
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2486
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExperimentId(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1928
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1929
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 1964
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1965
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$800(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExperimentStartTimeMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2067
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2068
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2779
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2780
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    .line 2781
    invoke-virtual {p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    .line 2780
    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public setOngoingExperiments(ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2764
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2765
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;ILdevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public setOverflowPolicy(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2696
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2697
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-object p0
.end method

.method public setOverflowPolicyValue(I)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2670
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2671
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;I)V

    return-object p0
.end method

.method public setSetEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2307
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2308
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2337
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2338
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$2300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimeToLiveMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2243
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2244
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setTimeoutEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2532
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2533
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3000(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2564
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2565
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3200(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTriggerEvent(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2122
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2123
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1400(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTriggerEventBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2150
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2151
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1600(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTriggerTimeoutMillis(J)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2185
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2186
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1, p2}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1700(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;J)V

    return-object p0
.end method

.method public setTtlExpiryEventToLog(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2611
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2612
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3300(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2643
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2644
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$3500(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVariantId(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2008
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2009
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$900(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVariantIdBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;
    .locals 1

    .line 2038
    invoke-virtual {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2039
    iget-object v0, p0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;->access$1100(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
