.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16213
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25100()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 16206
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .line 17834
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17835
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17819
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17820
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17821
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17820
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30400(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17791
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17792
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30400(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17805
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17806
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17777
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17778
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearCcEnableArenas()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17065
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17066
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16837
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16838
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearCsharpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17218
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17219
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17009
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17010
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearGoPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16734
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16735
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16540
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16541
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16873
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16874
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16488
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16489
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16397
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16398
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16293
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16294
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearJavaStringCheckUtf8()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16612
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16613
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26300(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearObjcClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17136
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17137
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16648
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16649
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearPhpClassPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17403
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17404
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearPhpGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16945
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16946
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearPhpMetadataNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17588
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17589
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearPhpNamespace()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17495
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17496
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16909
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16910
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearRubyPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17681
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17682
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearSwiftPrefix()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17314
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17315
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17847
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17848
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)V

    return-object p0
.end method

.method public getCcEnableArenas()Z
    .locals 1

    .line 17038
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v0

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .line 16796
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public getCsharpNamespace()Ljava/lang/String;
    .locals 1

    .line 17179
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17192
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 16978
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 1

    .line 16683
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16700
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16515
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v0

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .line 16856
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .line 16453
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .line 16346
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16363
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .line 16245
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16261
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .line 16577
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public getObjcClassPrefix()Ljava/lang/String;
    .locals 1

    .line 17094
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17108
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 16631
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getPhpClassPrefix()Ljava/lang/String;
    .locals 1

    .line 17361
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17375
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpClassPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhpGenericServices()Z
    .locals 1

    .line 16928
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpGenericServices()Z

    move-result v0

    return v0
.end method

.method public getPhpMetadataNamespace()Ljava/lang/String;
    .locals 1

    .line 17543
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpMetadataNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17558
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpMetadataNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhpNamespace()Ljava/lang/String;
    .locals 1

    .line 17450
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17465
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPhpNamespaceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .line 16892
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    return v0
.end method

.method public getRubyPackage()Ljava/lang/String;
    .locals 1

    .line 17636
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getRubyPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRubyPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17651
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getRubyPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSwiftPrefix()Ljava/lang/String;
    .locals 1

    .line 17266
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwiftPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 17282
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSwiftPrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 17737
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 17726
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 17713
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17714
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 17713
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCcEnableArenas()Z
    .locals 1

    .line 17025
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    return v0
.end method

.method public hasCcGenericServices()Z
    .locals 1

    .line 16776
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasCsharpNamespace()Z
    .locals 1

    .line 17167
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 16963
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasGoPackage()Z
    .locals 1

    .line 16667
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    return v0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16503
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    return v0
.end method

.method public hasJavaGenericServices()Z
    .locals 1

    .line 16848
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    .line 16436
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .line 16330
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .line 16230
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasJavaStringCheckUtf8()Z
    .locals 1

    .line 16560
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public hasObjcClassPrefix()Z
    .locals 1

    .line 17081
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .line 16623
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method public hasPhpClassPrefix()Z
    .locals 1

    .line 17348
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpClassPrefix()Z

    move-result v0

    return v0
.end method

.method public hasPhpGenericServices()Z
    .locals 1

    .line 16920
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasPhpMetadataNamespace()Z
    .locals 1

    .line 17529
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpMetadataNamespace()Z

    move-result v0

    return v0
.end method

.method public hasPhpNamespace()Z
    .locals 1

    .line 17436
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPhpNamespace()Z

    move-result v0

    return v0
.end method

.method public hasPyGenericServices()Z
    .locals 1

    .line 16884
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasRubyPackage()Z
    .locals 1

    .line 17622
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasRubyPackage()Z

    move-result v0

    return v0
.end method

.method public hasSwiftPrefix()Z
    .locals 1

    .line 17251
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasSwiftPrefix()Z

    move-result v0

    return v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17860
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17861
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30700(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)V

    return-object p0
.end method

.method public setCcEnableArenas(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17051
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17052
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16816
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16817
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setCsharpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17205
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17206
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCsharpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17233
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17234
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16994
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16717
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16718
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGoPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16753
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16754
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16527
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16528
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26000(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16864
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16470
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16471
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16380
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJavaOuterClassnameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16416
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16417
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16277
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16278
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJavaPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16311
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16312
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$25400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16594
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16595
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setObjcClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17122
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17123
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjcClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17152
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17153
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16639
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16640
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$26400(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)V

    return-object p0
.end method

.method public setPhpClassPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17389
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17390
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29000(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhpClassPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17419
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17420
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29200(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPhpGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16936
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16937
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setPhpMetadataNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17573
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17574
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29600(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhpMetadataNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17606
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29800(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPhpNamespace(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17480
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17481
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPhpNamespaceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17512
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17513
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29500(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 16900
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 16901
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$27300(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)V

    return-object p0
.end method

.method public setRubyPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17667
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$29900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRubyPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17698
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17699
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30100(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSwiftPrefix(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17298
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17299
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28700(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSwiftPrefixBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17332
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17333
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$28900(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17763
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17764
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17765
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17764
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30200(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 17749
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->copyOnWrite()V

    .line 17750
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$30200(Lcom/google/protobuf/DescriptorProtos$FileOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method
